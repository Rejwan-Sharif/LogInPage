<%-- 
    Document   : Check
    Created on : May 3, 2023, 3:41:12 PM
    Author     : Student
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:if test="${empty param.username || empty param.password}">
            <c:redirect url="index.jsp">
                <c:param name="errmsg" value="User Name or Password Empty"/>
            </c:redirect>         
        </c:if>
        <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/jsp_practice" user="root" password="sysadmin"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="data">
            SELECT count(*) as a FROM login WHERE user='${param.username}' and password='${param.password}' 
        </sql:query>
        <c:forEach var="row" items="${data.rows}">
            <c:choose>
                <c:when test="${row.a > 0}">
                    <c:set var="userinfo" value="${param.username}" scope="session"/>
                    <c:redirect url="Success.jsp"/>
                </c:when>
                <c:otherwise>
                    <c:redirect url="index.jsp">
                        <c:param name="errmsg" value="Username or passwoerd is incorrect"/>
                    </c:redirect>
                </c:otherwise>
            </c:choose>  
        </c:forEach>
        
    </body>
</html>
