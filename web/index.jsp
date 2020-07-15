
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
        <div class="col-xs-12 col-sm-8 col-md-9">

                        <!-- Contenido de  anuncios-->
                        <br>
                        <br>
                        <c:forEach var="item" items="${lista}">
                            <div class="full-width post">
                                <figure class="full-width post-img">
                                    <img src="ControladorImagen?id=${item.id}" width="250" height="230">   

                                </figure>
                                <div class="full-width post-info">
                                    <h1 href="" class="full-width post-info-title">${item.titulo}</h1>

                                    <p class="full-width post-info-price">Precio: ${item.precio}</p
                                    <span class="post-info-zone">Departamento: ${item.departamentoBD}</span>
                                    <br>
                                    <h4><a href="ControladorAnuncio?op=list&id=${item.id}">Leer mas</a></h4>

                                </div>
                            </div>
                        </c:forEach>  

                        

      
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
                     <h1 href="" class="full-width post-info-title">${item.titulo}</h1>
                      <h1 href="" class="full-width post-info-title">${item.precio}</h1>
                       <h1 href="" class="full-width post-info-title">${item.categoriaBD}</h1>
                        <h1 href="" class="full-width post-info-title">${item.estadoBD}</h1>
                         <h1 href="" class="full-width post-info-title">${item.departamentoBD}</h1>
                          <h1 href="" class="full-width post-info-title">${item.descripcion}</h1>
                           <h1 href="" class="full-width post-info-title">${item.telefono}</h1>
                           <h1 href="" class="full-width post-info-title">${item.fecha}</h1>
                   
                     <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('esta seguro de eliminar este anuncio??'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
        </div
         </div>
         </div>
            
    </body>
</html>
