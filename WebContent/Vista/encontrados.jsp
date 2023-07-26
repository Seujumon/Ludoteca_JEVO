<%@page import="logica.Entidades.Juego"%>
<%@page import="persistencia.JuegosDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Jevo Juegos - Busqueda</title>
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
    <div class="d-flex flex-row justify-content-center align.items-center py-4">
        <h2>Resultados de su búsqueda: </h2>
    </div>
	<!--Tabla-->
    <div class="px-5">
    <table class="table table-responsive">
  <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Nombre</th>
        <th scope="col">Autor/a</th>
        <th scope="col">Tag 1</th>
        <th scope="col">Tag 2</th>
        <th scope="col">Tag 3</th>
        <th scope="col">Tipo</th>
        <th scope="col">Jug Min</th>
        <th scope="col">Jug Max</th>
        
    </tr>
  </thead>
  <tbody class="table-group-divider">
    <%
                    
    				String nombre=request.getParameter("nombre");
    				String autor=request.getParameter("autor");
    				String tipo=request.getParameter("tipo");
    				int cantidadDeJugadores = Integer.parseInt(request.getParameter("jugadores"));
    				String cat1 = request.getParameter("cat1");
    				String cat2 = request.getParameter("cat2");
    				String cat3 = request.getParameter("cat3");
    				
    				Juego j1 = new Juego();
    				j1.setNombre(nombre);
    				j1.setAutor(autor);
    				j1.setTipo(tipo);
    				j1.setJugMin(cantidadDeJugadores);
    				j1.setCat1(cat1);
    				j1.setCat2(cat2);
    				j1.setCat3(cat3);
    				//
    				
    				
                    ArrayList<Juego> juegos;
                    JuegosDAO juegosDAO = new JuegosDAO();
                    String condicion = juegosDAO.generarCondicion(j1);
                    juegos = juegosDAO.buscarJuegos(condicion);
                    
                    for(int i = 0; i<juegos.size();i++){
                    	
                    %>
			
				<tr>
					<td><%=juegos.get(i).getId()%></td>
					<td><%=juegos.get(i).getNombre()%></td>
					<td><%=juegos.get(i).getAutor()%></td>
					<td><%=juegos.get(i).getCat1() %></td>
					<td><%=juegos.get(i).getCat2()%></td>
					<td><%=juegos.get(i).getCat3()%></td>
					<td><%=juegos.get(i).getTipo()%></td>
					<td><%=juegos.get(i).getJugMin() %></td>
					<td><%=juegos.get(i).getJugMax()%></td>
					
				</tr>
				<% } %>
  </tbody>
</table>
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
