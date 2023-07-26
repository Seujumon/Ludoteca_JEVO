<%@page import="persistencia.JuegosDAO"%>
<%@page import="logica.Entidades.Juego"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Jevo Juegos - Eliminar</title>
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
        <h2 class="d-flex flex-row justify-content-center align.items-center" id="drop">Eliminar </h2>
        <p class= "d-flex flex-row justify-content-center align.items-center">Para eliminar juegos de la ludoteca es necesario una clave de Administrador/a y el Id del juego. Si no recuerda el ID puede consultarlo en la página </p><a href=""class= "d-flex flex-row justify-content-center align.items-center"> Ludoteca </a>
       
    </div>
    <!--Alerta-->
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>

     <div class="alert alert-danger d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    La siguiente opción es irreversible. Si no está seguro/a de querer eliminar el juego de la ludoteca, sino marcarlo como "No Disponible" para el público, ingrese a la opción modificar. 
  </div>
</div>
    <!--Formulario para eliminar-->
    <% 
		String id=request.getParameter("id");
		int mid;
		mid=Integer.parseInt(id);
		Juego resultado=null;
		JuegosDAO j1=new JuegosDAO();
		resultado=j1.buscarJuego(mid);
		%>

    <form  action="JuegoController?accion=delete&" method="post">

        <div class="container-fluid d-flex flex-row">
        <div class="mb-3  mx-5">
            <label for="id" class="form-label">Id del Juego: </label>
                <input type="number" readonly class="form-control" value=<%=resultado.getId()%> name="id" id="id" required>
            </div>
        </div>


            <div class="container-fluid d-flex flex-row">
      
                <div class="mb-3  mx-5">
                    <label for="clave" class="form-label">Clave de Administrador/a: </label>
                    <input type="password" class="form-control" name="clave" id="clave"  aria-describedby="emailHelp"  required>
                    <div id="emailHelp" class="form-text">ES NECESARIA LA CLAVE </div>
                </div>
           

            </div>



            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="click2" required>
            <label class="form-check-label" for="click2">Clic aquí para eliminar el juego</label>
            </div>
        <button type="submit" class="btn btn-danger">ELIMINAR</button>
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
