<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>

<%!
   private static final int PAGE_SIZE = 5;
 %>
<%
  int userId = (Integer)session.getAttribute("userId");
  User u1 = new User();
  User u = u1.getUserById(userId);
  session.setAttribute("user",u);

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
  
   List<Application> applications= new  ArrayList<Application>(); 
   int pageCount = Application.getAllApplications(applications,pageNo,PAGE_SIZE);
   if(pageNo>pageCount) pageNo=pageCount;
 %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>招聘信息</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="heading">
				<div class="headerBox">
					<h1 class="logo">就业网</h1>
					<!--<span class="hadId"></span>-->
					<a href="Main.jsp" class="mainNav">招聘信息</a>
					<div class="user" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
						<div class="userInfor" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<img src="images/user.png" />
							<span class="userInforName"><%=u.getUserName() %></span>
							<span class="triangle"><img src="images/xiasanjiao.png" /></span>
						</div>
						<div id="userChoice" class="userChoiceBox" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<p><a href="PerInfor.jsp">个人信息</a></p>
							<p><a href="deliverHistory.jsp?userId=<%=u.getUserId() %>">投递纪录</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="Recruitment">
				<div class="RecruitmentBox">
				<table>
					<thead>
						<tr>
							<th width="35%">公司名称</th>
							<th width="35%">发布岗位</th>
							<th width="20%">发布时间</th>
							<th width="10%">投递</th>
						</tr>
					</thead>
							</thead>
				<% for(int i=0;i<applications.size();i++){
				     Application a = applications.get(i);
				  
				 %>
					<tbody>
						<tr>
							<td><a href="comInforPer.jsp?companyId=<%=a.getCompanyId() %>"><%=a.getCompanyName() %></a></td>
							<td><a href="positionDetailPer.jsp?id=<%=a.getId()%>"><%=a.getJobName() %></a></td>
							<td><%=a.getReleaseTime() %></td>
							<td><a href="deliverSuc.jsp?id=<%=a.getId()%>" class="deliver">投递</a></td>
						</tr>
					</tbody>
				 <%} %>
				</table>
				<div class="page">
					    <a> 共<%=pageCount %>页</a>
						<a> 第<%=pageNo %>页</a>
						<a href="Main.jsp?pageNo=<%=pageNo-1 %>">上一页</a>
						<span>—</span>
						<a href="Main.jsp?pageNo=<%=pageNo+1 %>">下一页</a>
					    <a href="Main.jsp?pageNo=<%=pageCount %>">尾页</a>
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
