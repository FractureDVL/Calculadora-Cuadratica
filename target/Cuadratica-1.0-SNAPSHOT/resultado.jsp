
<%@page import="Modelo.Operacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%
    double a = Double.valueOf(request.getParameter("a_field"));
    double b = Double.valueOf(request.getParameter("b_field"));
    double c = Double.valueOf(request.getParameter("c_field"));

    Operacion op = new Operacion(a, b, c);
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculadora | Formulario</title>
    </head>

    <body>

        <h1>Resultado de la Ecuacion</h1>
        
        <p>El resultado positivo es: <span><%= op.cuadratica1()%></span></p>

        <p>El resultado negativo es: <span><%= op.cuadratica2()%></span></p>

    </body>

</html>