<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
    User u = (User)session.getAttribute("user");

 %>
<%
    
    int id = Integer.parseInt(request.getParameter("id"));
    Application a = Application.getApplication(id);
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>岗位详细信息</title>
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
							<p><a href="deliver.jsp">投递纪录</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
				
			<div class="positionBox">
				<div class="positionTitle">
					<h3><%=a.getJobName() %></h3>
					<p><a><%=a.getCompanyName() %></a></p><span><%=a.getReleaseTime() %></span>
				</div>
				<p><span>工作地点：</span><%=a.getJobPlace() %></p>
				<p><span>每月薪资：</span><%=a.getSalary() %></p>
				<br />
				<p><span>岗位职责： </span></p>
				<p><%=a.getJobTask() %></p>
				<br />
				<p><span>任职要求： </span></p>
				<p><%=a.getJobRequire() %></p>
				<br />
	            <input class="positionSub" type="submit" value="投递简历" />
	            
			</div>
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
	</body>
</html>
