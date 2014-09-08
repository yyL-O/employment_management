<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
       request.setCharacterEncoding("UTF-8");
       String jobName = request.getParameter("jobName");
       String jobPlace = request.getParameter("jobPlace");
       int salary= Integer.parseInt(request.getParameter("salary"));
       String jobTask = request.getParameter("jobTask");
       String jobRequire = request.getParameter("jobRequire");
       Application a = (Application)session.getAttribute("application");;
       int id = a.getId();
       a.setJobName(jobName);
       a.setJobPlace(jobPlace);
       a.setSalary(salary);
       a.setJobTask(jobTask);
       a.setJobRequire(jobRequire);
       a.update(id);
       session.setAttribute("application",a);
       response.sendRedirect("positionDetail.jsp?id="+id);
       
 
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
