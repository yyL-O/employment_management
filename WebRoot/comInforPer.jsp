<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>

<%
    User u = (User)session.getAttribute("user");
    int companyId= Integer.parseInt(request.getParameter("companyId"));
    Company c1= new Company();
    Company c =c1.getCompanyById(companyId);
 %>
 
 <%
        
  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>公司信息</title>
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
							<p><a href="deliver.jsp">投递信息</a></p>
							<p><a href="deliver.jsp">投递纪录</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
				
			<div class="perinforBox comInforBox">
				<div class="perDetaile">
					<h2><%=c.getCompanyName() %></h2>
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