<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
       request.setCharacterEncoding("UTF-8");
       String companyAccount = request.getParameter("companyAccount");
       String companyPassword = request.getParameter("companyPassword");
       String companyName = request.getParameter("companyName");
       String linkName = request.getParameter("linkName");
       String linkPhone = request.getParameter("linkPhone");
       Company c =  new Company();
       c.setCompanyAccount(companyAccount);
       c.setCompanyPassword(companyPassword);
       c.setCompanyName(companyName);
       c.setLinkName(linkName);
       c.setLinkPhone(linkPhone);
     
       c.save();
  
 
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
		<script language="JavaScript1.2" type="text/javascript">
<!--
//  Place this in the 'head' section of your page.  

function delayURL(url, time) {
    setTimeout("top.location.href='" + url + "'", time);
}

//-->
</script>


注册成功!<br>
2秒之后自动跳转,如果不跳转，请点击下面链接
<a href="login.jsp">登陆界面</a>
<script type="text/javascript">
delayURL("login.jsp",2000);
</script>
  </head>
  
  <body>
   
  </body>
</html>
