<%-- 
    Document   : logout
    Created on : Jun 1, 2023, 1:06:26 AM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:remove scope="session" var="username"/>
            <c:redirect url="index.jsp"></c:redirect>
       
    </body>
</html>
