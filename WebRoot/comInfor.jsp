<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>

<%
    Company c = (Company)session.getAttribute("company");

 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>公司信息</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/infor.css" />
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
							<p><a href="postHistory.jsp">招聘记录</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
				
			<div class="perinforBox comInforBox">
				<div class="perDetaile">
					<h2><%=c.getCompanyName() %></h2><span class="edit"><a href="comInforEdit.jsp">修改信息</a></span>
					<p><span>公司名称：</span><%=c.getCompanyAccount() %></p>
					<p><span>联系人姓名：</span><%=c.getLinkName() %></p>
					<p><span>联系人电话：</span><%=c.getLinkPhone() %></p>
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