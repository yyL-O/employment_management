<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
       request.setCharacterEncoding("UTF-8");
       String companyName = request.getParameter("companyName");
       String linkName = request.getParameter("linkName");
       String linkPhone = request.getParameter("linkPhone");
       System.out.println(linkName);
       Company c = (Company)session.getAttribute("company");;
       c.setCompanyName(companyName);
       c.setLinkName(linkName);
       c.setLinkPhone(linkPhone);
       c.update(c.getCompanyId());
       session.setAttribute("company",c);
       response.sendRedirect("comInfor.jsp");
 
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
