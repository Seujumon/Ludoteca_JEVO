<%@page import="persistencia.JuegosDAO"%>
<%@page import="logica.Entidades.Juego"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Jevo Juegos - Modificar</title>
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
    <div class="px-5">

    <div class="d-flex flex-column justify-content-center align.items-center py-4">
        <h2 class="d-flex flex-row justify-content-center align.items-center" id="edit">Modificar </h2>
        <p class= "d-flex flex-row justify-content-center align.items-center">Para modificar juegos de la ludoteca es necesario una clave de Administrador/a y el Id del juego. Si no recuerda el ID puede consultarlo en la página </p><a href=""class= "d-flex flex-row justify-content-center align.items-center"> Ludoteca </a>
    </div>
	<!--Formulario para Actualizar-->
	
	<% 
		String id=request.getParameter("id");
		int mid;
		mid=Integer.parseInt(id);
		Juego resultado=null;
		JuegosDAO j1=new JuegosDAO();
		resultado=j1.buscarJuego(mid);
		%>
    <form  action="JuegoController?accion=actualizar&" method="post">

        <div class="container-fluid d-flex flex-row">
        <div class="mb-3  mx-5">
            <label for="id" class="form-label">Id del Juego: </label>
                <input type="number" readonly class="form-control" name="id" id="id" required value=<%=resultado.getId()%>>
            </div>

        <div class="mb-3  mx-5">
            <label for="nombre" class="form-label">Nombre: </label>
                <input type="text" class="form-control" name="nombre" id="nombre" value=<%=resultado.getNombre()%>>
            </div>
            <div class="mb-3  mx-5">
            <label for="autor" class="form-label">Autor</label>
                <input type="text" class="form-control" name="autor" id="autor" value=<%=resultado.getAutor()%>>
            </div>
        </div>

            <div class="container-fluid d-flex flex-row">
                <div class="item mx-5">
                    <label for="tipo" class="form-label">Tipo: </label>
                     <input type="text" class="form-control" name="tipo" id="tipo" value=<%=resultado.getTipo()%>>
                </div>
                
                <div class="item mx-5">
                    <label for="jugMin" class="form-label">Cantidad Minima de Jugadores: </label>
                   <input type="number" class="form-control" name="jugMin" id="jugMin" value=<%=resultado.getJugMin()%>>
                </div>

                <div class="item mx-5">
                    <label for="jugMax" class="form-label">Cantidad Maxima de Jugadores: </label>
                   <input type="number" class="form-control" name="jugMax" id="jugMax" value=<%=resultado.getJugMax()%>>
                </div>
            </div>

            <div class="container-fluid d-flex flex-row my-3">

            <div class="mb-3 item mx-5">
            <label for="cat1" class="form-label">Categoria: </label>
                <input type="text" class="form-control" name="cat1" id="cat1" value=<%=resultado.getCat1()%>>
            </div>

            <div class="mb-3 item mx-5">
            <label for="cat2" class="form-label">Categoria: </label>
                <input type="text" class="form-control" name="cat2" id="cat2" value=<%=resultado.getCat2()%>>
            </div>

            <div class="mb-3 item mx-5">
            <label for="cat3" class="form-label">Categoria: </label>
                <input type="text" class="form-control" name="cat3" id="cat3" value=<%=resultado.getCat3()%>>
            </div>

            </div>


            <div class="container-fluid d-flex flex-row">
            <div>
                <div class="mb-3  mx-5">
                    <label for="clave" class="form-label">Clave de Administrador/a: </label>
                    <input type="password" class="form-control" name="clave" id="clave"  aria-describedby="emailHelp" required>
                    <div id="emailHelp" class="form-text">ES NECESARIA LA CLAVE </div>
                </div>
            </div>

            <div class="item mx-5">
                    <label for="estado" class="form-label">Estado </label>
                    <select class="form-select" aria-label="Default select example"
                    class="jugMax" id="estado" name="estado">
                    <option selected value="1">Disponible</option>
                    <option value="0">No Disponible</option>
                    </select>
                </div>
            </div>



            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="click" required>
            <label class="form-check-label" for="click">Clic aquí para modificar el juego</label>
            </div>
        <button type="submit" class="btn btn-warning">MODIFICAR</button>
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
