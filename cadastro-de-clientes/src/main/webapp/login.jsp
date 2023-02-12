<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Form.css">
        <link rel="shortcut icon" href="favicon/favicon.ico" type="image/x-icon">
        <title>Login</title>
    </head>
    <body>
        <div id="container">
        <h2>Login</h2>
        <form action="ServletLogin" method="get">
            <div>
                <label for="loginUser">Login:</label>
                <input type="text" name="loginUser" class="inputForm" placeholder="Login">
            </div>
            
            <div>
                <label for="passwordUser">Password:</label>
                <input type="password" name="passwordUser" class="inputForm" placeholder="Password">
            </div>
            
            <div id="containerButton">
                <input type="submit" value="Submit" id="button">
            </div>
            <p id="scriplet">
                <%
                    String error = (String) request.getAttribute("error");
                    if(error != null){
                        out.print(error);
                    }
                %>
            </p>
        </form>
    </div>
    </body>
</html>