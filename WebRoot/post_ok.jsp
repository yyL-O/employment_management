<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>
<%@ page import="java.sql.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
       request.setCharacterEncoding("UTF-8");
       Company c = (Company)session.getAttribute("company");
       String jobName = request.getParameter("jobName");
       String jobPlace = request.getParameter("jobPlace");
       int salary = Integer.parseInt(request.getParameter("salary"));
       String jobTask = request.getParameter("jobTask");
       String jobRequire = request.getParameter("jobRequire");
       Application a =  new Application();
       a.setCompanyId(c.getCompanyId());
       a.setCompanyName(c.getCompanyName());
       a.setJobName(jobName);
       a.setJobPlace(jobPlace);
       a.setSalary(salary);
       a.setJobTask(jobTask);
       a.setJobRequire(jobRequire);
       a.setReleaseTime(new Timestamp(System.currentTimeMillis()));
       a.save();
       response.sendRedirect("comMain.jsp");
 
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
