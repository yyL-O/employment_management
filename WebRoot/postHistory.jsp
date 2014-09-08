<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>
<%@ page import="java.sql.*"%>

<%!
   private static final int PAGE_SIZE = 5;
 %>
 
 <%
   String strPageNo = request.getParameter("pageNo");
   int pageNo = 1;
   if(strPageNo!=null){
       pageNo = Integer.parseInt(strPageNo);   
   }
   if(pageNo<1) pageNo=1;
 
 %>
 
 <%
    Company c = (Company)session.getAttribute("company");
    List<Deliver> delivers= new  ArrayList<Deliver>(); 
    int pageCount = Deliver.getCompanyDeliver(delivers,pageNo,PAGE_SIZE,c.getCompanyId());
    if(pageNo>pageCount) pageNo=pageCount;
 %>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>岗位发布信息</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="heading">
				<div class="headerBox">
					<h1 class="logo">就业网</h1>
					<!--<span class="hadId"></span>-->
					<a href="comMain.jsp" class="mainNav">岗位发布信息</a>
					<div class="com" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
						<div class="comInform" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<img src="images/comPic.png" />
							<span class="comInforName"><%=c.getCompanyName() %></span>
							<span class="triangle"><img src="images/xiasanjiao.png" /></span>
						</div>
						<div id="userChoice" class="userChoiceBox" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<p><a href="comInfor.jsp">公司信息</a></p>
							<p><a href="post.jsp">岗位发布</a></p>
							<p><a href="postHistory.jsp">招聘纪录</a></p>
							
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="history">
				<table>
					<thead>
						<tr>
							<th width="18%">投递人名</th>
							<th width="20%">职位名称</th>
							<th width="14%">工作地点</th>
							<th width="20%">投递日期</th>
							<th width="13%">通过</th>
							<th width="15">未通过</th>
							
						</tr>
					</thead>
					<tbody>
					    <% 
					    for(int i=0;i<delivers.size();i++){
				          Deliver d = delivers.get(i);
				          System.out.println("nnnnnnnnnnnnnn");
				  
				     %>
						<tr>
							<td><a href="perInforCom.jsp?userId=<%=d.getUserId() %>"><%=d.getUserName()%></a></td>
							<td><a href="positionDetail.jsp?id=<%=d.getId()%>"><%=d.getJobName() %></a></td>
							<td><%=d.getJobPlace() %></td>
							<td><%=d.getDeliverTime() %></td>
							<td><a class="dele" href="choose.jsp?deliverId=<%=d.getDeliverId() %>&choose=1">通过</a></td>
							<td><a class="dele" href="choose.jsp?deliverId=<%=d.getDeliverId() %>&choose=2">未通过</a></td>
						</tr>
						
					<%} %>
					</tbody>
				</table>
				<div class="page">
					<a> 共<%=pageCount %>页</a>
					<a> 第<%=pageNo %>页</a>
					<a href="deliverHistory.jsp?pageNo=<%=pageNo-1 %>">上一页</a>
					<span>—</span>
					<a href="deliverHistory.jsp?pageNo=<%=pageNo+1 %>">下一页</a>
				    <a href="deliverHistory.jsp?pageNo=<%=pageCount %>">尾页</a>
				</div>
			</div>
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
	</body>
</html>
