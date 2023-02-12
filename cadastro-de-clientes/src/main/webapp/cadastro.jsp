<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Form.css">
        <link rel="shortcut icon" href="favicon/favicon.ico" type="image/x-icon">
        <title>Cadastro</title>
    </head>
    <body>
        <div id="container">
            <form action="ServletCadastro" method="post">
                <h2>Cadastro</h2>
                <div>
                    <label for="nameCustomer">Name:</label>
                    <input type="text" name="nameCustomer" class="inputForm" placeholder="Name" required>
                </div>
                <div>
                    <label for="phoneCustomer">Phone:</label>
                    <input type="tel" name="phoneCustomer" class="inputForm" placeholder="Phone" required>
                </div>
                <div>
                    <label for="emailCustomer">Email:</label>
                    <input type="text" name="emailCustomer" class="inputForm" placeholder="Email" required>
                </div>

                <div id="containerButton">
                    <input type="submit" value="Submit" id="button">
                </div>

                <p id="scriplet">
                    <%
                        String sucess = (String) request.getAttribute("sucess");
                        if(sucess != null){
                            out.print(sucess);
                        }
                    %>
                </p>
                <%
                    String nameUser = (String) request.getSession().getAttribute("nameUser");
                %>
            </form>
        </div>
    </body>
</html>
