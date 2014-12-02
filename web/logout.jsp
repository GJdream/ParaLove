<%-- 
    Document   : logout
    Created on : Dec 2, 2014, 11:28:37 AM
    Author     : Jessica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("logout", "");
    response.sendRedirect("index.html");
%>
