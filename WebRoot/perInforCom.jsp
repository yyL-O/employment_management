<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>

<% 
   Company c = (Company)session.getAttribute("company");
   int UserId = Integer.parseInt(request.getParameter("userId"));
   User u1 = new User();
   User	u = u1.getUserById(UserId);
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
			
			<div class="perinforBox" >
				<div class="perDetaile">
					<h2 id="pername"><%=u.getUserName() %></h2>
			        <p><span>性别：</span><%=u.getSex() %></p>
					<p><span>邮箱：</span><%=u.getUserAccount() %></p>
					<p><span>联系方式：</span><%=u.getUserPhone() %></p>
					<p><span>身份证号：</span><%=u.getIdentity() %></p>
					<p><span>学历：</span><%=u.getEducation() %></p>
					<p><span>专业：</span><%=u.getMajor() %></p>
					<p><span>简历：</span><%=u.getResume() %></p>  
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
