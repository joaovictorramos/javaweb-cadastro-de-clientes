<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Home.css">
        <link rel="shortcut icon" href="favicon/favicon.ico" type="image/x-icon">
        <title>Home</title>
    </head>
    <body>
        <div id="container">
        <h1>
            Bem-vindo 
            <% 
                String nameUser = (String) request.getSession().getAttribute("nameUser");
                if(nameUser != null){
                    out.print(nameUser);
                }  
            %>
        </h1>
        <p>
            <a href="http://localhost:9090/P2/cadastro.jsp">Clique aqui</a> para iniciar os cadastros!
        </p>
    </div>
    </body>
</html>
