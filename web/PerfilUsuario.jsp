<%-- 
    Document   : PerfilUsuario
    Created on : 13-07-2020, 02:56:31 PM
    Author     : usuario
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.RegistroUsuario"%>

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
        
         <h1>Perfil de Usuario</h1>
        <p>Usuario :${sessionScope.usuario} </p>
        
        <p>bienvenido Ahora Puede Publicar Su Anuncio</p>
        <br>
        <a href="MainController?op=nuevo">Crear Nueva Publicacion</a>
        
   
       
    </body>
</html>
