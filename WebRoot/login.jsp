<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   
		             String userAccount ="";
                     String userPassword="";
					 Cookie[] cookies = request.getCookies();
					 if(cookies!=null){
						  for(int i =0;i<cookies.length;i++){
							  if(cookies[i].getName().trim().equals("userAccount")){
								 userAccount = cookies[i].getValue();
								
							  }
							  if(cookies[i].getName().trim().equals("userPassword")){
									 userPassword= cookies[i].getValue();
									
								  }
							  
						  }
					 }
 %>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>登录就业网</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="heading">
				<div class="headerBox">
					<h1 class="logo">就业网</h1>
					<!--<span class="hadId"></span>-->
				</div>
			</div>
			
			<div class="loginContent">
				<div class="loginContentBox">
					<div class="guide">
						<div class="guideWord">
							<p>招聘信息查询系统</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;职场精英，从这里做起</p>
						</div>
						<div class="guidePic">
							<img src="images/guidePic.png" />
						</div>
					</div>
					<div class="loginPart">
						<div class="loginTitle"><p>登录</p></div>
						<div class="personalLogin" >
							<div class="loginForm">
								<div id="pError" class="PersonalError">用户名或密码错误</div>
								<form id="Plogin" action="login_judge.jsp" method="post">
									<div class="loginSelect">
										<label for="loginSec">身份</label>
										<select class="loginS" id="loginSec" name="loginSelect">
											<option value>请选择</option>
											<option value="person">个人登录</option>
											<option value="company">企业登录</option>
										</select>
									</div>
							
									<div class="usernameFiled">
										<label for="pusername">账号</label>
										<input type="text" id="pusername" name="userAccount" placeholder="请填写邮箱"  value=<%=userAccount %>>
									</div>
									<div class="passwordField">
										<label for="ppassword">密码</label>
										<input type="password" id="ppassword" name="userPassword" placeholder="密码"  value=<%=userPassword %> >
									</div>
									<div class="remember">
										<input type="checkbox" class="remCheck" name="remember" value="yes"/>
										<span class="remText">记住密码</span>
									</div>
									<div class="btnBox">
										<input type="submit" name="submit"  class="loginBtn" value="立即登录" />
									</div>
								</form>
								<div class="lineCut">line</div>
								<ul class="regLink">
								    <li>没有账号？</li>
									<li><a href="perReg.jsp">个人注册</a></li>
									<li><a href="comReg.jsp">企业注册</a></li>
								</ul>														
							</div>
						</div>
			</div>
			<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
	</body>
</html>