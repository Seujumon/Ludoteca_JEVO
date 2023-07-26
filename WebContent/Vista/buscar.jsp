<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Jevo Juegos - Buscar</title>
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
 		<a class="navbar-brand" href="#">
      	<img src="img/Jevo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top"> Jevo Juegos</a>
        </div>
        <div class="nav-item">
      	<ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex flex-row justify-content-center align.items-center">
        	<li class="nav-item mx-4">
          	<a class="nav-link active" aria-current="page" href="#">Ludoteca</a>
        	</li>
        	<li class="nav-item mx-4">
          	<a class="nav-link active" aria-current="page" href="#">Buscar</a>
        	</li>
        	<li class="nav-item mx-4">
          	<a class="nav-link active" aria-current="page" href="#">Editar</a>
        	</li>
        </ul>
    	</div>

    </nav>
   </div>

	<!--Main--> 
    <div class="px-5">

    <div class="d-flex flex-column justify-content-center align.items-center py-4">
        <h2 class="d-flex flex-row justify-content-center align.items-center">Buscar </h2>
        <p class= "d-flex flex-row justify-content-center align.items-center">Para realizar la búsqueda, no es necesario llenar todos los campos. Pero los resultados serán más exactos mientras más campos estén completos. </p>
    </div>
	<!--Formulario para buscar-->

    <form action="JuegoController" method="get">
     <input type="hidden" value="buscarjuegos" name="accion" id="accion">
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre: </label>
                <input type="text" class="form-control"  name="nombre" id="nombre" aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">Puede ingresar parte del nombre del juego. </div>
            </div>
            <div class="mb-3">
            <label for="autor" class="form-label">Autor</label>
                <input type="text" class="form-control"  name="autor" id="autor">
            </div>

            <div class="container-fluid d-flex flex-row">
                <div class="item mx-5">
                    <label for="tipo" class="form-label">Tipo: </label>
                    <select class="form-select" aria-label="Default select example"
                    class="tipo"  name="tipo" id="tipo">
                        <option value="">Ambas</option>
                        <option  value="competitivo">Competitivo</option>
                        <option selected value="cooperativo">Cooperativo</option>
                    </select>
                </div>
                
                <div class="item mx-5">
                    <label for="jugadores" class="form-label">Cantidad de Jugadores: </label>
                    <select class="form-select" aria-label="Default select example"
                    class="jugadores" name="jugadores" id="jugadores">
                    <option value="0">Cualquier cantidad</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">+8</option>
                    </select>
                </div>
            </div>

            <div class="container-fluid d-flex flex-row my-3">

            <div class="mb-3 item mx-5">
            <label for="cat1" class="form-label">Categoria: </label>
                <input type="text" class="form-control" name="cat1" id="cat1">
            </div>

            <div class="mb-3 item mx-5">
            <label for="cat2" class="form-label">Categoria: </label>
                <input type="text" class="form-control" name="cat2" id="cat2">
            </div>

            <div class="mb-3 item mx-5">
            <label for="cat3" class="form-label">Categoria: </label>
                <input type="text" class="form-control" name="cat3" id="cat3">
            </div>

            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="click" required>
            <label class="form-check-label" for="click">Clic aquí para realizar la búsqueda</label>
            </div>
            
        <button type="submit" class="btn btn-dark">BUSCAR</button>
    </form>
    
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
