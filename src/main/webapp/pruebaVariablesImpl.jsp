<%-- 
    Document   : pruebaVariablesImpl
    Created on : 23-sep-2016, 10:44:58
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Variables</title>
    </head>
    <body>
        La IP de tu ordenador es: <%= request.getRemoteHost() %>
        <br>
        El nombre del servidor es: <%= request.getServerName() %>
        <br>
        El puero del servidor: <%= request.getServerPort() %>
        <br>
        La IP del servidor es: <%= request.getRemoteAddr() %>
        <br>
        El protocolo que estas usando es: <%= request.getProtocol() %>
    </body>
</html>
