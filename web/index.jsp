
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
    </head>
    <body>
        <h1>Listado de Anuncios</h1>
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
    </body>
</html>
