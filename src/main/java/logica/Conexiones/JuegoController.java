package logica.Conexiones;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logica.Entidades.Juego;
import persistencia.JuegosDAO;
import persistencia.UsuariosDAO;

/**
 * Servlet implementation class JuegoController
 */
//@WebServlet("/JuegoController")
public class JuegoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JuegoController() {
    	
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		JuegosDAO juegosDao = new JuegosDAO();
		UsuariosDAO usuariosDao = new UsuariosDAO();
        String accion;
        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");
        
        if (accion == null || accion.isEmpty()) {
        	//Página Inicial
        	dispatcher = request.getRequestDispatcher("Vista/index.jsp");
        }
        else if(accion.equals("ludoteca")){
        	//Página Ludoteca Completa
        	dispatcher = request.getRequestDispatcher("Vista/ludoteca.jsp");
        }
        else if(accion.equals("full")) {
        	dispatcher = request.getRequestDispatcher("Vista/ludoteca_completa.jsp");
        }
        else if(accion.equals("buscar")){
        	//Página Buscar Todavía no funciona TODO Arreglar los name a los campos del buscador
        	dispatcher = request.getRequestDispatcher("Vista/buscar.jsp");
        }
        else if(accion.equals("buscarjuegos")){
        	dispatcher=request.getRequestDispatcher("Vista/encontrados");
        }
        else if (accion.equals("modificar")) {
        	//Página Modificar. 
            dispatcher = request.getRequestDispatcher("Vista/modificar.jsp");
        } 
        else if(accion.equals("agregar")) {
        	//Página Agregar
        	dispatcher = request.getRequestDispatcher("Vista/agregar.jsp");
        }
        else if (accion.equals("addr")) {
        	//Agrega el juego        	
        	
        	//Autenticar clave
        	String clave = request.getParameter("clave");
        	if(usuariosDao.comprobarContraseña(clave)) {
        		int id = 1;
                String nombre = request.getParameter("nombre");
                String autor = request.getParameter("autor");
                String cat1 = request.getParameter("cat1");
                String cat2 = request.getParameter("cat2");
                String cat3 = request.getParameter("cat3");
                String tipo = request.getParameter("tipo");
                int jugMin = Integer.parseInt(request.getParameter("jugMin"));
                int jugMax = Integer.parseInt(request.getParameter("jugMax"));
                boolean disponible = (request.getParameter("estado")).equals("1");
                System.out.println("Request estado : " + request.getParameter("estado"));
                System.out.println("disponible =" + disponible);
                Juego j = new Juego(id, nombre, autor, cat1, cat2, cat3, tipo, jugMin, jugMax, disponible);
                juegosDao.agregarJuego(j);
        	}
        	
            
            dispatcher = request.getRequestDispatcher("Vista/ludoteca.jsp");

        } 
        else if (accion.equals("actualizar")) {
        	//Actualiza los datos y va a la ludoteca        
        	
        	//Autenticar clave
        	String clave = request.getParameter("clave");
        	
        	if(usuariosDao.comprobarContraseña(clave)) {
        	
            int id = Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            String autor = request.getParameter("autor");
            String cat1 = request.getParameter("cat1");
            String cat2 = request.getParameter("cat2");
            String cat3 = request.getParameter("cat3");
            String tipo = request.getParameter("tipo");
            int jugMin = Integer.parseInt(request.getParameter("jugMin"));
            int jugMax = Integer.parseInt(request.getParameter("jugMax"));
            boolean estado = (request.getParameter("estado")).equals("1");
            Juego j = new Juego(id, nombre, autor, cat1, cat2, cat3, tipo, jugMin, jugMax, estado);
            //juegosDao actualizar Juego
            //TODO revisar los nombre de la tabla
            juegosDao.actualizarJuego(j);
        	 }
            dispatcher = request.getRequestDispatcher("Vista/ludoteca.jsp");
           
        }
        	else if (accion.equals("eliminar")){
           dispatcher = request.getRequestDispatcher("Vista/eliminar.jsp");
       }
      else if (accion.equals("delete")) {
    	  
    	  //Autenticar clave 
    	  String clave = request.getParameter("clave");
      	  if(usuariosDao.comprobarContraseña(clave)) {
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  juegosDao.eliminarJuego(id);
      	  }
    	  dispatcher = request.getRequestDispatcher("Vista/ludoteca.jsp");
      }
        
        dispatcher.forward(request, response);

    }
                

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
