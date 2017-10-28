

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<tilesx:useAttribute name="css" classname="java.util.List" id="cssItems"/>
<tilesx:useAttribute name="headjs" classname="java.util.List" id="headjsItems"/>
<tilesx:useAttribute name="js" classname="java.util.List" id="jsItems"/>
<tilesx:useAttribute name="fonts" classname="java.util.List" id="fontItems"/>
<!DOCTYPE html>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
        <c:forEach items="${cssItems}" var="css">
            <link href="<spring:url value="${css}"/>" type="text/css" rel="stylesheet" media="all"/>
        </c:forEach>
        <c:forEach items="${headjsItems}" var="headjs">
            <script src="<spring:url value="${headjs}"/>"></script>
        </c:forEach>
        <c:forEach items="${fontItems}" var="font">
            <link href="<spring:url value="${font}"/>">
        </c:forEach>
            
    </head>
    <body>
        <tiles:insertAttribute name="banner"></tiles:insertAttribute>
        <tiles:insertAttribute name="body"></tiles:insertAttribute>
        <footer>
            <tiles:insertAttribute name="footer"></tiles:insertAttribute>
        </footer>
        
        <tiles:insertAttribute name="cartjs"></tiles:insertAttribute>
        <c:forEach items="${jsItems}" var="js">
            <script src="<spring:url value="${js}"/>"></script>
        </c:forEach>
        
    </body>
        
    
</html>
