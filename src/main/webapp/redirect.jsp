<%-- 
    Document   : redirect
    Created on : Oct 25, 2017, 2:54:27 AM
    Author     : HuynhTanPhat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String redirectUrl = request.getContextPath() + "/Home";
    response.sendRedirect(redirectUrl);
%>
