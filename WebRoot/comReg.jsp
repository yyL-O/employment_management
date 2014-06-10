<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>欢迎注册就业网 _企业注册</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body onLoad="createCode()">
		<div class="wrapper">
			<div class="heading">
				<div class="headerBox">
					<h1 class="logo">就业网</h1>
				</div>
			</div>
			
			<div class="register">
				<div class="regGuide">
					<div class="regWord">
						<h1>就业网</h1><span>|</span><p>优秀企业人才聚集之地</p>
						<div class="loginTip">
							<p> 已有账号？</p><span><a href="login.jsp">立即登录</a></span>
						</div>
					</div>
				</div>
			</div>
			
			<div class="regContent">
				<div class="regBox">
					<div class="regTitle">企业注册</div>
					<div class="regForm">
						<form id="comReg" action="comReg_ok.jsp" method="post">

							<div id="re_excommail" class="re_ex"></div>
							<label for="re_inputcommail" class="re_label">邮箱</label>
							<input type="text" id="re_inputcommail" class="fieldReg" name="companyAccount" onfocus="CheckComMail()" onblur="checkcommail(this.value)" />

							

							<div id="re_ex3" class="re_ex"></div>
							<label for="re_inputpassword" class="re_label">密码</label>
							<input type="password" id="re_inputpassword" class="fieldReg" name="companyPassword" onfocus="checkPassword()" onblur="checkpassWord(this.value)" />

							<div id="re_ex4" class="re_ex"></div>
							<label for="re_repassword" class="re_label">确认密码</label>
							<input type="password" id="re_repassword" class="fieldReg" onfocus="checkRePassword()" onblur="checkRePassWord(this.value)" />

							<div id="re_excomname" class="re_ex"></div>
							<label for="re_inputcomname" class="re_label">公司名称</label>
							<input type="text" id="re_inputcomname" class="fieldReg" name="companyName" onfocus="checkcomname()"  onblur="checkcomname1(this.value)" />

							<div id="re_exlinkname" class="re_ex"></div>
							<label for="re_inputlinkname" class="re_label">联系人姓名</label>
							<input type="text" id="re_inputlinkname" class="fieldReg" name="linkName" onfocus="checklinkname()"  onblur="checklinkname1(this.value)" />

							<div id="re_excomconnect" class="re_ex"></div>
							<label for="re_inputcomconnect" class="re_label">联系人电话</label>
							<input type="text" id="re_inputcomconnect" class="fieldReg" name="linkPhone" onfocus="checkcomconnect()"  onblur="checkcomconnect1(this.value)" />

							<input type="submit" class="regSub" value="立即注册" onclick="checkfinal()" />

						</form>
					</div>
				</div>
			</div>
			<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/code.js"></script>
		<script type="text/javascript" src="js/check.js"></script>
		<script type="text/javascript" src="js/checkFinal.js"></script>		
	</body>
</html>
