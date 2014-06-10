<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    User u = (User)session.getAttribute("user");
    int id = Integer.parseInt(request.getParameter("id"));
    Application a = Application.getApplication(id);
    Deliver d = new Deliver();
    d.setId(id);
    d.setUerId(u.getUserId());
    d.setCompanyName(a.getCompanyName());
    d.setJobName(a.getJobName());
    d.setUserName(u.getUserName());
    d.setDeliverTime(new Timestamp(System.currentTimeMillis()));
    d.setState("已投递");
    d.setJobPlace(a.getJobPlace());
    d.setCompanyId(a.getCompanyId());
    d.save();
 %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>简历投递成功</title>
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
							<p><a href="deliverHistory.jsp">投递纪录</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="success">
				<p>简历投递成功!</p>
			</div>
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
	</body>
</html>
