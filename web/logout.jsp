<%-- 
    Document   : logout
    Created on : Sep 9, 2020, 1:17:48 PM
    Author     : MY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
      <%
      response.setHeader("Pragma","no-cache");
      response.setHeader("Cache-Control", "no-store");
    
      response.setDateHeader("Expire", 0);
     response.sendRedirect("index.html");
      
      %>
     
    

