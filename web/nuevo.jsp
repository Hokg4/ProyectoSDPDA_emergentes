<%-- 
    Document   : nuevo
    Created on : 27-06-2020, 10:08:24 PM
    Author     : usuario
--%>
<%@page import="com.emergentes.modelo.RgAnuncios"%>
<%@page import="java.util.*" %> 
<%@page import="java.text.SimpleDateFormat" %> 
<%
    Date dNow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat("yyyy/MM/dd");
    String currentDate = ft.format(dNow);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RgAnuncios Nue = (RgAnuncios) request.getAttribute("Nue");
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
                    <a href="editar.jsp">
                        <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>TU PERFIL
                    </a>
                </li>
            </ul>
        </nav>

		
	</div>
      <section class="section">

        <h1 class="text-center text-light">Crear Nueva Publicacion</h1>
        <div class="container">
	<div class="row">
	<div class="col-xs-12 col-sm-10 col-sm-offset-1" align="center"style="border: 1px solid #E1E1E1;">
            
      
        <form action="MainController" method="post" enctype="multipart/form-data">
            <table>
                <input type="hidden" name="id" value="${Nue.id}">

                <tr>
                    <td>Agregar imagen</td>
                    <td><input type="file" name="imagen" value="${Nue.imagen}"></td>
                </tr>

                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${Nue.titulo}"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="${Nue.precio}"></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><select name="categoria">
                            <option value="vehiculos">Vehiculos</option>
                            <option value="pasatiempos">Pasatiempos</option>
                            <option value="casa y jardin">Casa y Jardin</option>
                            <option value="ropa y accesorios">Ropa y accesorios</option>
                            <option value="electronica">Electronica</option>
                            <option value="entretenimiento">Entretenimiento</option>
                            <option value="celulares">Celulares</option>
                            <option value="familia">Familia</option>
                            <option value="alquileres">Alquileres</option>
                            <option value="computadoras">Computadoras</option>
                            <option value="viviendas en venta">Viviendas en venta</option>
                            <option value="higiene y cuidado">Higiene y cuidado</option>
                            <option value="otros">Otros</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Estado</td>
                    <td><select name="estado">
                            <option value="nuevo">Nuevo</option>
                            <option value="usado-como nuevo">Usado-Como nuevo</option>
                            <option value="usado-buen estado">Usado-Buen estado</option>
                            <option value="usado-aceptable">Usado-Aceptable</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td><select name="departamento">
                            <option value="chuquisaca">Chuquisaca</option>
                            <option value="cochabamba">Cochabamba</option>
                            <option value="la paz">La Paz</option>
                            <option value="oruro">Oruro</option>
                            <option value="pando">Pando</option>
                            <option value="potosi">Potosi</option>
                            <option value="santa cruz">Santa Cruz</option>
                            <option value="tarija">Tarija</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="${Nue.descripcion}"></td>
                </tr>
                 <tr>
                    <td>Telefono</td>
                    <td><input type="tel" name="telefono" value="${Nue.telefono}"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="fecha" value="<%= currentDate%>" autocomplete="on"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
                <h5><a href="MainController">Volver</a></h5>
            </table> 
        </form>
        </div>
        </div>
        </div>
    </body>
</html>
