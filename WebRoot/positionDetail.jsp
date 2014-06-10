<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>


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
					<a href="comMain.jsp" class="mainNav">岗位发布信息</a>
					<div class="com" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
						<div class="comInform" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<img src="images/comPic.png" />
							<span class="comInforName"><%=a.getCompanyName() %></span>
							<span class="triangle"><img src="images/xiasanjiao.png" /></span>
						</div>
						<div id="userChoice" class="userChoiceBox" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<p><a href="comInfor.jsp">公司信息</a></p>
							<p><a href="post.jsp">岗位发布</a></p>
							<p><a href="postHistory.jsp">招聘历史</a></p>
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
	            
	            
			</div>
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
	</body>
</html>
