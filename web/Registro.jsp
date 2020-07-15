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
                    <a href="registro.jsp">
                        <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i> REGISTRO
                    </a>
                </li>
                <li>
                    <a href="PerfilUsuario.jsp">
                        <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>TU PERFIL
                    </a>
                </li>
            </ul>
        </nav>

		
	</div>
    <section class="section">
    <h1 class="text-center text-light">
         Quieres publicar?REGISTRATE PRIMERO
           <c:if test="${nuevo.id == 0}">Nuevo registro</c:if>
          
            </h1>
        <div class="container">
	<div class="row">
	<div class="col-xs-12 col-sm-10 col-sm-offset-1" align="center" style="border: 1px solid #E1E1E1;">
            
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
        </div>
                </div>
                </div>

    </body>
</html>
