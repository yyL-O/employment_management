<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
    User u = (User)session.getAttribute("user");
 
 %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>个人信息修改</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/infor.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="bg">
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
							<p><a href="#">投递信息</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="perinforBox" >
			<form id="updatePer" action="updatePer_ok.jsp" method="post">
				<div class="perDetaile perDetaileEdit">
					<h2 id="pername"><%=u.getUserName() %></h2>
					<p><span>性别：</span><input class="sexEdit" name="sex" type="radio" value=<%=u.getSex() %> checked="checked">女<input class="sexEdit" name="sex" type="radio" value=<%=u.getSex() %> checked="checked">男</p>
					<p><span>邮箱：</span><input type="text" name="userAccount" value=<%=u.getUserAccount() %>></p>
					<p><span>联系方式：</span><input type="text" name="userPhone" value=<%=u.getUserPhone() %>></p>
					<p><span>身份证号：</span><input type="text" name="identity" value=<%=u.getIdentity() %>></p>
					<p><span>学历：</span><input type="text" name="education" value=<%=u.getEducation() %>></p>
					<p><span>专业：</span><input type="text" name="major" value=<%=u.getMajor() %>></p>
					<p><span>简历：</span><textarea name="resume"><%=u.getResume() %></textarea></p>
					<input class="EditSub" type="submit" name="submit" value="保存修改" />
					<input class="EditSub" type="submit" value="取消" />
				</form>
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
