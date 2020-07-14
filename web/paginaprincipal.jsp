
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.RgAnuncios"%>
<%
    List<RgAnuncios> lista = (List<RgAnuncios>) request.getAttribute("lista");
%>
<!DOCTYPE html>

<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
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
                        <a href="index.jsp">
                            <i class="fa fa-commenting-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>TU PERFIL
                        </a>
                    </li>
                </ul>
            </nav>
        </div>


        <!-- ====== fondo pannel ======-->

        <header class="full-width header-index">
        </header>
        <!-- ====== Buscador movil ======-->

        <!-- ====== Contenido de pagina ======-->
        <section class="full-width section">

            <div class="container">
                <form action="ControladorBuscar" class="form-inline text-center"  >
                    <input type ="text" name="txtbuscar" class="form-control input-lg" >
                    <input type ="submit" value="buscar" class="btn btn-danger btn-lg" >
                   
                </form>


                <div class="row">

                    <div class="col-xs-12 col-sm-4 col-md-3">

                        <div class="full-width user-menu-xs">


                            <div class="full-width list-group" style="border-radius: 0;">
                                <div class="list-group-item text-center">

                                    <small>FILTRAR POR:</small>
                                    <small>CATEGORIAS</small>
                                </div>
                                <a href="vehiculos.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> VEHICULOS
                                </a>
                                <a href="pasatiempos.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> PASATIEMPOS
                                </a>
                                <a href="casayjardin.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> CASA Y JARDIN
                                </a>
                                <a href="ropayaccesorios.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> ROPA Y ACCESORIOS
                                </a>
                                <a href="electronica.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> ELECTRONICA</a>
                                <a href="entretenimiento.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> ENTRETENIMIENTO
                                </a>
                                <a href="entretenimiento.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> CELULARES
                                </a>
                                <a href="alquileres.jsp" class="list-group-item">
                                    <i class="" aria-hidden="true"></i> ALQUILERES

                                    <a href="computadoras.jsp" class="list-group-item">
                                        <i class="" aria-hidden="true"></i> COMPUTADORAS
                                    </a>
                                    <a href="higieneycuidado.jsp" class="list-group-item">
                                        <i class="" aria-hidden="true"></i> HIGIENE Y CIUDADO
                                    </a>
                                    <a href="otros.jsp" class="list-group-item">
                                        <i class="" aria-hidden="true"></i> OTROS
                                    </a>
                            </div>
                        </div>
                    </div>
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

                        



                        <br>

                        <div class="clearfix"></div>
                        <nav class="text-center">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>