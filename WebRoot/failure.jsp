<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>登录失败</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		
			
			<div class="success">
				<p>账号密码错误，请重新登录，1秒后自动返回登录界面</p>
			</div>
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
		
		<script language="JavaScript1.2" type="text/javascript">
<!--
//  Place this in the 'head' section of your page.  

function delayURL(url, time) {
    setTimeout("top.location.href='" + url + "'", time);
}

//-->
</script>

<a href="login.jsp">登陆界面</a>
<script type="text/javascript">
delayURL("login.jsp",2000);
</script>
	</body>
</html>
