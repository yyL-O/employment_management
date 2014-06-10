<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
       request.setCharacterEncoding("UTF-8");
       String userAccount = request.getParameter("userAccount");
       String identity = request.getParameter("identity");
       String sex = request.getParameter("sex");
       String education = request.getParameter("education");
       String major = request.getParameter("major");
       String userPhone = request.getParameter("userPhone");
       String resume = request.getParameter("resume");
       System.out.print(sex);
       User u = (User)session.getAttribute("user");;
       u.setUserAccount(userAccount);
       u.setIdentity(identity);
       u.setSex(sex);
       u.setEducation(education);
       u.setMajor(major);
       u.setUserPhone(userPhone);
       u.setResume(resume);
       u.update(u.getUserId());
       session.setAttribute("user",u);
       response.sendRedirect("PerInfor.jsp");
 
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
	



  </head>
  
  <body>
   
  </body>
</html>
