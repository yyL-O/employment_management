

<%
 String userLogined  = (String)session.getAttribute("userLogined");
 out.print(userLogined);
 if(userLogined==null||!userLogined.trim().equals("true")){
    response.sendRedirect("login.jsp");
    return;
 }

 %>
