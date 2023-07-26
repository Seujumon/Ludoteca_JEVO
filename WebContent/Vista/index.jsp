<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Jevo Juegos</title>
    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!--Iconos de Bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
<link rel="stylesheet" href="CSS/styles.css ">
</head>
<body>

	<!--Header--> 
	
	<!--NavBar--> 

  <div class="container-fluid">
  	<nav class="navbar bg-body-tertiary bg-dark border-bottom border-bottom-dark py-3 px-5" data-bs-theme="dark">

  		<div class="nav-item">
 		<a class="navbar-brand" href="JuegoController">
      	<i class="bi bi-dice-6-fill"></i> Jevo Juegos</a>
        </div>
        <div class="nav-item">
      	<ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex flex-row justify-content-center align.items-center">
        	<li class="nav-item mx-4">
          	<a class="nav-link active" aria-current="page" href="JuegoController?accion=ludoteca"><i class="bi bi-list"></i>Ludoteca</a>
        	</li>
        	<li class="nav-item mx-4">
          	<a class="nav-link active" aria-current="page" href="JuegoController?accion=agregar"><i class="bi bi-file-earmark-plus-fill"></i>Agregar</a>
        	</li>
        </ul>
    	</div>

    </nav>
   </div>

	<!--Main--> 

	<!--Carrusel-->


	<div id="carouselExampleSlidesOnly" class="carousel slide py-2 px-5" data-bs-ride="carousel">
  		<div class="carousel-inner px-5">
    		<div class="carousel-item active">
      			<img src="https://i.ibb.co/M5BzF8F/01.png" class="d-block w-100" alt="...">
      			<div class="carousel-caption d-none d-md-block">
        		<h5>Ludoteca</h5>
        		<p>Explorá los juegos de nuestra ludoteca</p>
        		<button type="button" class="btn btn-warning" href="JuegoController?accion=ludoteca">LUDOTECA</button>

     			</div>

    		</div>
    		<div class="carousel-item">
      			<img src="https://i.ibb.co/0nFKWH1/02.png" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
        		<h5>Buscar</h5>
        		<p>Buscá en nuestra ludoteca el juego que querés.</p>
        		<button type="button" class="btn btn-warning" href="JuegoController?accion=buscar">BUSCAR</button>

     			</div>
    		</div>
    		<div class="carousel-item">
      			<img src="https://i.ibb.co/4Jwkq26/03.png" class="d-block w-100" alt="...">
      			<div class="carousel-caption d-none d-md-block">
        		<h5>Agregar</h5>
        		<p>Un método fácil para nuestros miembros para agregar facilmente juegos de la ludoteca. 
        		Requiere una clave de acceso. </p>
        		<button type="button" class="btn btn-warning" href="JuegoController?accion=agregar">Agregar</button>

     			</div>

    		</div>
  		</div>
	</div>


	<!--Footer--> 

	<footer class="d-flex flex-column justify-content-center align.items-center py-3 secondary">
        <div class="d-flex flex-row justify-content-center align.items-center ">
            <a class="d-flex px-2" href="https://github.com/Seujumon" target="_blank"><i class="bi bi-github"></i>GitHub</a>
            <a class="d-flex px-2" href="https://www.linkedin.com/in/juan-seura/" target="_blank"><i class="bi bi-github"></i>Linkedin</a>
        </div>
        <div class="d-flex flex-row justify-content-center align.items-center">
            <p class="d-flex"> © 2023 Creado por Juan Seura. All Rights Reserved.</p>
        </div>
    </footer>
	


	<!--Script de Bootstrap-->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
 </body>

</html>
