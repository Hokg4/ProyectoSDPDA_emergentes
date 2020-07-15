
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.*" %> 
<%@page import="java.text.SimpleDateFormat" %> 
<%
    Date dNow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat("yyyy/MM/dd");
    String currentDate = ft.format(dNow);
%>

<%@page import="com.emergentes.modelo.RgAnuncios"%>
<%
    //la variable Edit viene del controlador y debe guardarse en el mismo nombre Edit
    RgAnuncios Edit = (RgAnuncios) request.getAttribute("Edit");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

        

            <c:if test="${Edit.id != 0}">Editar Anuncio</c:if>

            </h1> 
            <form action="MainController" method="post" enctype="multipart/form-data">
                <table>
                    <input type="hidden" name="id" value="${Edit.id}">
                <tr>
                    <td>Agregar imagen</td>
                    <td><input type="file" name="imagen" value="${Edit.imagen}"></td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${Edit.titulo}"></td>

                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="${Edit.precio}"></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="categoriaBD" value="${Edit.categoriaBD}"></td>
                </tr>
                <tr>
                    <td>Estado</td>
                    <td><input type="text" name="estadoBD" value="${Edit.estadoBD}"></td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td><input type="text" name="departamentoBD" value="${Edit.departamentoBD}"></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="${Edit.descripcion}"></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="tel" name="telefono" value="${Edit.telefono}"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="fecha" value="<%= currentDate%>" autocomplete="on"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table> 
        </form>
    </body>
</html>
