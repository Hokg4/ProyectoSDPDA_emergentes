<%-- 
    Document   : Administrador
    Created on : 14-07-2020, 06:38:28 PM
    Author     : usuario
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.RgAnuncios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<RgAnuncios> lista = (List<RgAnuncios>) request.getAttribute("lista");
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
                        <a href="PanelRequisitosAnuncio.jsp">
                            <i class="fa fa-pencil-square-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>PUBLICA TU ANUNCIO
                        </a>
                    </li>
                    <li>
                        <a href="LoginControlador">
                            <i class="fa fa-object-group fa-fw hidden-md hidden-lg" aria-hidden="true"></i> LOGIN
                        </a>
                    </li>
                    <li>
                        <a href="MainControllerUs?op=nuevo">
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
        <div>
            <section class="section">
       
            <h1 class="text-center text-light">
		 Perfil de Usuario
            
                        
        <div class="container">
	<div class="row">
	<div class="col-xs-12 col-sm-10 col-sm-offset-1" align="center" style="border: 1px solid #E1E1E1;">
        

        
          <h1>Perfil de Administrador</h1>
        <p>Administrador :${sessionScope.usuario} </p>
        
        <p>bienvenido Administrador </p>
        <h2>Panel de control</h2>
        <br>
        <p><a href ="MainController?op=nuevo">Nuevo Anuncio</a></p>
        <table >
            <tr>
                <th>Id</th>
                <th>Imagen</th>
                <th>Titulo</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Estado</th>
                <th>Departamento</th>
                <th>Descripcion</th>
                <th>Telefono</th>
                <th>Fecha</th>
                <th></th>  
                <th></th>

            </tr> 

            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td><img src="ControladorImagen?id=${item.id}" width="250" height="230"></td>
                    <td>${item.titulo}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoriaBD}</td>
                    <td>${item.estadoBD}</td>
                    <td>${item.departamentoBD}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.telefono}</td>
                    <td>${item.fecha}</td>
                     <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('esta seguro de eliminar este anuncio??'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
        </div>
          </div>
          </div>
    </body>
</html>
