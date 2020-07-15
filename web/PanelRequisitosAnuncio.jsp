<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/blog.css">
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
                    <a href="Registro.jsp">
                        <i class="fa fa-pencil-square-o fa-fw hidden-md hidden-lg" aria-hidden="true"></i>PUBLICA TU ANUNCIO
                    </a>
                </li>
                <li>
                    <a href=".jsp">
                        <i class="fa fa-object-group fa-fw hidden-md hidden-lg" aria-hidden="true"></i> LOGIN
                    </a>
                </li>
                <li>
                    <a href="Registro.jsp">
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
        <div>
            <section class="section">
       
            <h1 class="text-center text-light">
		Bienvenido
            </h1>
                        
        <div class="container">
	<div class="row">
	<div class="col-xs-12 col-sm-10 col-sm-offset-1" align="center" style="border: 1px solid #E1E1E1;">
            
        <h1>Si no tienes cuenta Registrate</h1>
        <p> <a href="MainControllerUs?op=nuevo">REGISTRATE ACA</a></p>
        
        
        <h2>Si quiere publicar un nuevo anuncio se te pedira login</h2>
        <h2>Si tienes cuenta ingresa a login</h2>
        <p> <a href="LoginControlador">LOGIN</a></p> 
         <h5><a href="MainController">Volver</a></h5>
        
        </div>
        </div>
        </div>
        </section>
    </body>
</html>
