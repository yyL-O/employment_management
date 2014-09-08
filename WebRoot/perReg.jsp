<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>欢迎注册就业网 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人注册</title>
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
					<div class="regTitle">个人注册</div>
					<div class="regForm">
						<form id="perReg" action="perReg_ok.jsp" method="post">
							<div id="re_exmail" class="re_ex"></div>
							<label for="re_inputmail" class="re_label">邮箱</label>
							<input type="text" id="re_inputmail" class="fieldReg" name="userAccount" onfocus="checkEmail()" onblur="checkmail(this.value)" />

							<div id="re_ex3" class="re_ex"></div>
							<label for="re_inputpassword" class="re_label">密码</label>
							<input type="password" id="re_inputpassword" class="fieldReg" name="userPassword" onfocus="checkPassword()" onblur="checkpassWord(this.value)" />

							<div id="re_ex4" class="re_ex"></div>
							<label for="re_repassword" class="re_label">确认密码</label>
							<input type="password" id="re_repassword" class="fieldReg" onfocus="checkRePassword()" onblur="checkRePassWord(this.value)" />
							
							<div id="re_exname" class="re_ex"></div>
							<label for="re_inputname" class="re_label">姓名</label>
							<input type="text" id="re_inputname" class="fieldReg" name="userName" onfocus="checkname()"  onblur="checkname1(this.value)" />
							
							<div class="sexBox">
							<label for="re_inputsex" class="re_label">性别</label>
							<input type="radio" class="fieldSex" name="sex" checked="checked" value="男" />男
							<input type="radio" class="fieldSex" name="sex" value="女" />女
							</div>

							<div id="re_exidnumber" class="re_ex"></div>
							<label for="re_inputidnumber" class="re_label">身份证号</label>
							<input type="text" id="re_inputidnumber" class="fieldReg" name="identity" onfocus="checkidnumber()"  onblur="checkidnumber1(this.value)" />

							<div id="re_exdegree" class="re_ex"></div>
							<label for="re_inputDegree" class="re_label">学历</label>
							<select class="re_inputdegree" id="re_inputDegree" name="education">
								<option value>请选择</option>
								<option value="专科">专科</option>
								<option value="本科">本科</option>
								<option value="硕士">硕士</option>
								<option value="博士">博士</option>
								<option value="其他">其他</option>
							</select>

							<div id="re_exspecialty" class="re_ex"></div>
							<label for="re_inputSpecialty" class="re_label">专业</label>
							<input type="text" id="re_inputSpecialty" class="fieldReg" name="major" onfocus="checkdegree()"  onblur="checkdegree1(this.value)" />

							<div id="re_exconnect" class="re_ex"></div>
							<label for="re_inputconnect" class="re_label">联系方式</label>
							<input type="text" id="re_inputconnect" class="fieldReg" name="userPhone" onfocus="checkconnect()"  onblur="checkconnect1(this.value)" />

							<div id="re_exresume" class="re_ex"></div>
							<label for="re_inputresume" class="re_label">简历</label>
							<textarea type="text" id="re_inputresume" class="areaReg" name="resume" placeholder="请填写个人简历详细信息" onfocus="checkresume()"  onblur="checkresume1(this.value)" ></textarea>

							<div id="re_ex5" class="re_ex"></div>				
							<label for="re_inputCode" class="re_label re_code_label">验证码</label>
							<input type="text" id="re_inputCode" class="re_code" onfocus="checkcode()" onblur="validate ()" />

							<input type="button" id="checkCode" class="re_code1" onClick="createCode()" />
							<a href="#" class="refresh" onClick="createCode()"><img src="images/refresh.gif" /></a>
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
