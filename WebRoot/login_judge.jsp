<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.job.model.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<%
     request.setCharacterEncoding("UTF-8");
     User u = new User();
     Company c = new Company();
     String userAccount =request.getParameter("userAccount");
     String userPassword =request.getParameter("userPassword");
     String loginSelect = request.getParameter("loginSelect");
     //String companyAccount =request.getParameter("companyAccount");
     //String companyPassword =request.getParameter("companyPassword");
     
    
      if(loginSelect.trim().equals("person")){
         Cookie cookie = null;
		 Cookie cookie1 = null;
	     List<User> list= u.getUsers();
	     for(int i=0;i<list.size();i++){
	        u = list.get(i);
	        if(u.getUserAccount().equals(userAccount.trim())&&u.getUserPassword().equals(userPassword.trim())){
	            if("yes".equals(request.getParameter("remember"))){
        		  cookie=new Cookie("userAccount",userAccount);
        		  cookie1=new Cookie("userPassword",userPassword);
        		  cookie.setMaxAge(600000);
        		  cookie1.setMaxAge(600000);  
        	    } else{
	        		 cookie=new Cookie("userAccount",userAccount);
	        		 cookie1=new Cookie("userPassword",userPassword);
	       		     cookie.setMaxAge(0);
	       		     cookie1.setMaxAge(0);
       		    
        	    }
        	    response.addCookie(cookie);
        	    response.addCookie(cookie1);
	            session.setAttribute("userLogined","true");
	            session.setAttribute("userId",u.getUserId());
	            response.sendRedirect("Main.jsp");
	            return;
	       }
	       
	    }
	      response.sendRedirect("failure.jsp");
     }
     
     if(loginSelect.trim().equals("company")){
         Cookie cookie = null;
		 Cookie cookie1 = null;
	     List<Company> list= c.getCompanys();
	     for(int i=0;i<list.size();i++){
	        c = list.get(i);
	        if(c.getCompanyAccount().equals(userAccount.trim())&&c.getCompanyPassword().equals(userPassword.trim())){
	            if("yes".equals(request.getParameter("remember"))){
        		  cookie=new Cookie("companyAccount",userAccount);
        		  cookie1=new Cookie("companyPassword",userPassword);
        		  cookie.setMaxAge(600000);
        		  cookie1.setMaxAge(600000);  
        	    } else{
	        		 cookie=new Cookie("companyAccount",userAccount);
	        		 cookie1=new Cookie("companyPassword",userPassword);
	       		     cookie.setMaxAge(0);
	       		     cookie1.setMaxAge(0);
       		    
        	    }
        	    response.addCookie(cookie);
        	    response.addCookie(cookie1);
	            //session.setAttribute("userLogined","true");
	            session.setAttribute("companyId",c.getCompanyId());
	            response.sendRedirect("comMain.jsp");
	            return;
	       }
	       
	    }
	      response.sendRedirect("failure.jsp");
     }
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
