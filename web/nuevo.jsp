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
    </head>
    <body>
        <h1>Crear Nueva Publicacion</h1>
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
            </table> 
        </form>
    </body>
</html>
