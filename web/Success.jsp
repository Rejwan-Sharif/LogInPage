<%-- 
    Document   : Success
    Created on : May 3, 2023, 4:00:33 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center my-5">Welcome ${sessionScope["userinfo"]}</h1>
        <div class="d-flex justify-content-center">
             <button class="btn btn-lg btn-primary">
            <a class="text-decoration-none text-white" href="logout.jsp">Logout</a>
        </button>
        </div>
       
    </body>
</html>
