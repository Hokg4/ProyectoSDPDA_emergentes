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
         <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/main.css">
    </head>
    <body>
         <div class="full-width NavBar">
		<div class="full-width text-semi-bold NavBar-logo">
			Anuncios Bolivia
		</div>
        <!-- ====== navegador menu======-->	
            <nav class=" full-width NavBar-Nav">
            <div class="full-width NavBar-Nav-bg hidden-md hidden-lg show-menu-mobile"></div>
            <ul class="list-unstyled full-width menu-mobile-c">
               
                <li>
                    <a href="nuevo.jsp">
                        <i class="fa fa-pencil-square-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>PUBLICA TU ANUNCIO
                    </a>
                </li>
                <li>
                    <a href="login.jsp">
                        <i class="fa fa-object-group fa-fw hidden-md hidden-lg" aria-hidden="true"></i> LOGIN
                    </a>
                </li>
                <li>
                    <a href="Registro.jsp">
                        <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i> REGISTRO
                    </a>
                </li>
                <li>
                    <a href="tuanuncio.jsp">
                        <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>TU PERFIL
                    </a>
                </li>
            </ul>
        </nav>
           
		
	</div>
        <div>
            <section class="section">

        
        <div class="container">
	<div class="row">
	<div class="col-xs-12 col-sm-10 col-sm-offset-1" align="center"style="border: 1px solid #E1E1E1;"> 
            
        <h1 class="text-center text-light">

        
        
         <h1>Perfil de Usuario</h1>
        <p>Usuario :${sessionScope.usuario} </p>
        
        <p>bienvenido Ahora Puede Publicar Su Anuncio</p>
        <br>
        <a href="MainController?op=nuevo">Crear Nueva Publicacion</a>
        
   
        </div>
        </div>
        </div>
        
    </body>
</html>
