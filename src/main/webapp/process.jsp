<%-- 
    Document   : process
    Created on : 25-sep-2016, 14:42:18
    Author     : MacOS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario JSP</title>
    </head>
    <body bgcolor="#ffffcc">
        <% if ((request.getParameter("name") == null
                    && request.getParameter("email") == null)
                    || (request.getParameter("name").equals("")
                    && request.getParameter("email").equals(""))) {%>
        Complete este formulario
        <form method="POST" action="process.jsp">
            Su nombre: <input type="text" name="name" size="26"><br>
            Su email: <input type="text" name="email" size="26"><br>
            <input type="submit" value="Enviar">
        </form>
        <% } else { %> <%-- scriptlet JSP --%>
        <% String nombre, mail; %>
        <%
            nombre = request.getParameter("name");
            mail = request.getParameter("email");
        %>
        <b>Usted indicó la siguiente información</b>:
        <br><b>Nombre</b>: <%= nombre%><%-- expresion JSP --%>
        <br><b>Email</b>: <%= mail%>
        <% }%>
    </body>
</html>
