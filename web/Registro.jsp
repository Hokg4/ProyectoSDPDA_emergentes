<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.RegistroUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    RegistroUsuario nuevo = (RegistroUsuario)request.getAttribute("nuevo");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h1>
           <c:if test="${nuevo.id == 0}">Nuevo registro</c:if>
           
            </h1>
        <form action="MainControllerUs" method="POST">
            <table >
                <input type="hidden" name="id" value="${nuevo.id}">
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="${nuevo.nombre}"></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="apellido" value="${nuevo.apellido}"></td>
                </tr>
                <tr>
                    <td>Correo</td> 
                    <td><input type="email" name="correo" value="${nuevo.correo}"></td>
                </tr>
                 <tr>
                    <td>Contraseña </td> 
                    <td><input type="password" name="password" value="${nuevo.password}"></td>
                </tr>
                 <tr>
                    <td>C.I.</td> 
                    <td><input type="text" name="ci" value="${nuevo.ci}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>
            </table>
        </form>

    </body>
</html>
