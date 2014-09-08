<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
       request.setCharacterEncoding("UTF-8");
       int choose = Integer.parseInt(request.getParameter("choose"));
       System.out.println(choose);
       int deliverId = Integer.parseInt(request.getParameter("deliverId"));
       Deliver d = Deliver.getDeliver(deliverId);
       if(choose==1){ 
          d.setState("通过");
          d.update(deliverId);
       }else{
          d.setState("未通过");
          d.update(deliverId);
       
       }
       
 
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8" />
		<title>登录失败</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		
			
			<div class="success">
				<p>审查成功！2秒后自动跳入招聘纪录页面</p>
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
delayURL("postHistory.jsp",2000);
</script>
	</body>
</html>
