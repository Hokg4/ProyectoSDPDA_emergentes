<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.RegistroUsuario"%>
<%@page import="java.util.List"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<RegistroUsuario> lista = (List<RegistroUsuario>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Panel de Administracion</h1>
        <p>Usuarion :${sessionScope.usuario} </p>
        <p>bienvenido al panel de administracion</p>
        <br>
        <a href="LoginControlador?action=logout">salir [x]</a>


        <h1>Registro de Personas</h1>
        <p><a href="MainControllerUs?op=nuevo">nuevo registro</a></p>
        <table border = "1">
            <tr>

                <th>id</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Correo</th>
                <th>Password</th>
                <th>C.I.</th>
                <th></th>  
                <th></th>

            </tr>
            <c:forEach var="item" items="${lista}">

                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.apellido}</td>
                    <td>${item.correo}</td>
                    <td>${item.password}</td>
                    <td>${item.ci}</td>
                   <td><a href="MainControllerUs?op=editar&id=${item.id}">modificar</a></td>
                    <td><a href="MainControllerUs?op=eliminar&id=${item.id}" onclick="return(confirm('esta seguro?'))">eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
