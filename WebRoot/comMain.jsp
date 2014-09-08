<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%!
   private static final int PAGE_SIZE = 5;
 %>
 
<%
  int companyId = (Integer)session.getAttribute("companyId");
  Company c1 = new Company();
  Company c = c1.getCompanyById(companyId);
  session.setAttribute("company",c);

 %>
 <%
   String strPageNo = request.getParameter("pageNo");
   int pageNo = 1;
   if(strPageNo!=null){
       pageNo = Integer.parseInt(strPageNo);   
   }
   if(pageNo<1) {pageNo=1;}
 
 %>
 
  <%  
  
   List<Application> applications= new  ArrayList<Application>(); 
   int pageCount = Application.getApplications(applications,pageNo,PAGE_SIZE,c.getCompanyId());
   if(pageNo>pageCount) {pageNo=pageCount;}
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
				
			<div class="comMAIN">
				<div class="comMAINBox">
					<table>
						<thead>
							<tr>
								<th width="40%">发布岗位</th>
								<th width="30%">发布时间</th>
							    <th width="15%">修改</th>
								<th width="15%">删除</th>
							</tr>
						</thead>
				<% for(int i=0;i<applications.size();i++){
				     Application a = applications.get(i);
				  
				 %>
						<tbody>
							<tr>
								<td ><a href="positionDetail.jsp?id=<%=a.getId()%>"><%=a.getJobName() %></a></td>
								<td ><%=a.getReleaseTime() %></td>
								<td><a class="dele" href="appInforEdit.jsp?id=<%=a.getId() %>">修改</a></td>
								<td><a class="dele" href="delete_ok.jsp?id=<%=a.getId() %>">删除</a></td>
							</tr>
						</tbody>
				 <%} %>
					</table>
					<div class="page">
					    <a> 共<%=pageCount %>页</a>
						<a> 第<%=pageNo %>页</a>
						<a href="comMain.jsp?pageNo=<%=pageNo-1 %>">上一页</a>
						<span>—</span>
						<a href="comMain.jsp?pageNo=<%=pageNo+1 %>">下一页</a>
					    <a href="comMain.jsp?pageNo=<%=pageCount %>">尾页</a>
					    
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
	</body>
</html>