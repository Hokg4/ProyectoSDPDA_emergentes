
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.RgAnuncios"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<RgAnuncios> Anunc = (List<RgAnuncios>) request.getAttribute("Anunc");
%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Inicio</title>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/main.css">
        <title>JSP Page</title>
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
                    <a href="perfil.jsp">
                        <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>TU PERFIL
                    </a>
                </li>
            </ul>
        </nav>

		
	</div>
        <br>
        <br>
        
        
        <div>
            <h1 class="full-width text-semi-bold ">
		INFO ANUNCIO
            </h1>
            
            <c:forEach var="item" items="${Anunc}">


                <img src="ControladorImagen?id=${item.id}" width="250" height="230">

                <h1>${item.titulo}</h1>
                <p class="full-width post-info-price">Precio: ${item.precio}</p>
                <h3>Categoria: ${item.categoriaBD}</h3>
                <h3>Estado: ${item.estadoBD}</h3>
                <h3>Departamento: ${item.departamentoBD}</h3>
                <h3>Descripcion: ${item.descripcion}</h3>
                <h3>Telefono:${item.telefono}</h3>
                <h3>${item.fecha}</h3>
                
                
                <h5><a href="">Consulta al vendedor</a></h5>
                
                <h5><a href="MainController">Volver</a></h5>


            </c:forEach>   
            <br>
        </div>

    </body>
</html>
