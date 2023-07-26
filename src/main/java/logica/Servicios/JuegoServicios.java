package logica.Servicios;

import java.util.ArrayList;
import logica.Entidades.Juego;
import persistencia.JuegosDAO;

/**
  @author Juan Seura
 */
public class JuegoServicios {
    private JuegosDAO dao;
    private String condicion;
    public JuegoServicios(){
    	this.dao = new JuegosDAO();    }
    
    public void consultarTodosLosJuegos(){
        try{
            condicion = "";
            ArrayList<Juego> lista = new ArrayList<Juego>();
            lista = dao.buscarJuegos(condicion);
            mostrarResultado(lista);
        }catch(Exception e){
            System.out.println(e);
        }
        
    }
    public void mostrarResultado(ArrayList<Juego> lista){
        for (Juego juego : lista) {
            System.out.println(juego.toString());
        }
    }

}
