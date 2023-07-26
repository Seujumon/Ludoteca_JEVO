package persistencia;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import logica.Entidades.Juego;

/**
  @author Juan Seura
 */
public class JuegosDAO extends DAO{
	
	public JuegosDAO(){
		System.out.println("DAO");
		try {
			conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/JevoJuegos", "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conectarBaseDeDatos();
	}
	
	public String generarCondicion(Juego j1){
		String condicion = "WHERE ";
		
		if(!j1.getNombre().isEmpty()&&j1.getNombre()!=null) {
			condicion = condicion + "nombre LIKE '%" + j1.getNombre() + "%' OR ";
		}
		if(!j1.getAutor().isEmpty()&&j1.getAutor()!=null) {
			condicion = condicion + "autor LIKE '%" + j1.getAutor() + "%' OR ";
		}
		if(!j1.getCat1().isEmpty()&&j1.getCat1()!=null) {
			condicion = condicion + "categoria1 LIKE '%" + j1.getCat1() + "%' OR ";
			condicion = condicion + "categoria2 LIKE '%" + j1.getCat1() + "%' OR ";
			condicion = condicion + "categoria3 LIKE '%" + j1.getCat1() + "%' OR ";
		}
		if(!j1.getCat2().isEmpty()&&j1.getCat2()!=null) {
			condicion = condicion + "categoria1 LIKE '%" + j1.getCat2() + "%' OR ";
			condicion = condicion + "categoria2 LIKE '%" + j1.getCat2() + "%' OR ";
			condicion = condicion + "categoria3 LIKE '%" + j1.getCat2() + "%' OR ";
		}
		if(!j1.getCat3().isEmpty()&&j1.getCat3()!=null) {
			condicion = condicion + "categoria1 LIKE '%" + j1.getCat3() + "%' OR ";
			condicion = condicion + "categoria2 LIKE '%" + j1.getCat3() + "%' OR ";
			condicion = condicion + "categoria3 LIKE '%" + j1.getCat3() + "%' OR ";
		}
		if(!j1.getTipo().isEmpty()&&j1.getTipo()!=null) {
			condicion = condicion + "tipo LIKE '%" + j1.getTipo() + "%' OR ";
		}
		if(j1.getJugMin()>=0){
			condicion = condicion + "(cantidad_min_de_jugadores <=" + j1.getJugMin() + " AND cantidad_max_de_jugadores >= " + j1.getJugMin() + ")";
		}
		
		
		
		System.out.println("Condicion = " + condicion);
		
		
		
		if(condicion.equals("WHERE ")) {
			condicion="";
		}else if(condicion.subSequence((condicion.length()-5), (condicion.length()-1)).equals(" OR ")) {
			condicion = condicion.subSequence(0, (condicion.length()-5)).toString();
			
		}
		System.out.println("Condicion = " + condicion);
		return condicion;
	}
	public Juego buscarJuego(int id) {
		
		try {
            
			String consulta = "Select * from Ludoteca WHERE id = " + id + ";";
			consultarBaseDeDatos(consulta);
			Juego j = new Juego();
			while(resultado.next()) {
				
				j.setId(resultado.getInt(1));
                                j.setNombre(resultado.getString(2));
                                j.setAutor(resultado.getString(3));
                                j.setCat1(resultado.getString(4));
                                j.setCat2(resultado.getString(5));
                                j.setCat3(resultado.getString(6));
                                j.setTipo(resultado.getNString(7));
                                j.setJugMin(resultado.getInt(8));
                                j.setJugMax(resultado.getInt(9));
                                j.setDisponible(resultado.getBoolean(10));
				
			}
                       
			desconectarBaseDeDatos();
			return j;        
		}catch(Exception e){
			
			System.out.println(e);
			desconectarBaseDeDatos();
			return null;
                       
		} 
		
		
	}
	
	public ArrayList<Juego> buscarJuegos(String condicion){
		ArrayList<Juego> listaDeJuegos = new ArrayList<Juego>();
		try {
                        
			String consulta = "Select * from Ludoteca "+ condicion + ";";
			
			consultarBaseDeDatos(consulta);
			
			while(resultado.next()) {
				Juego j = new Juego();
				j.setId(resultado.getInt(1));
                                j.setNombre(resultado.getString(2));
                                j.setAutor(resultado.getString(3));
                                j.setCat1(resultado.getString(4));
                                j.setCat2(resultado.getString(5));
                                j.setCat3(resultado.getString(6));
                                j.setTipo(resultado.getNString(7));
                                j.setJugMin(resultado.getInt(8));
                                j.setJugMax(resultado.getInt(9));
                                j.setDisponible(resultado.getBoolean(10));
                                listaDeJuegos.add(j);
				
			}
                       
			desconectarBaseDeDatos();
			return listaDeJuegos;        
		}catch(Exception e){
			desconectarBaseDeDatos();
			System.out.println(e);
			return null;
                       
		} 
	}
	public void actualizarJuego(Juego j) {
//		String disponible = "true";
//		if(!j.isDisponible()) {
//			disponible="false";
//		}
		String consulta = "UPDATE Ludoteca SET nombre='" + j.getNombre() + "', autor = '" + j.getAutor()+ "', categoria1= '" + j.getCat1() +"', categoria2= '" + j.getCat2() +"', categoria3= '" + j.getCat3() + "', tipo = '" + j.getTipo()+ "', cantidad_min_de_jug= " + j.getJugMin() + ", cantidad_max_de_jug= " + j.getJugMax() + ", disponibilidad= " + j.isDisponible() + " WHERE id=" + j.getId() + ";" ; 
        System.out.println("conculta: " + consulta);        
		insertarModificarEliminar(consulta);
	}
        public void eliminarJuego(int id){
            String consulta = "DELETE FROM Ludoteca WHERE id= " + id + ";";
            System.out.println("Consulta: " + consulta);
            insertarModificarEliminar(consulta);
        }
        public void agregarJuego(Juego j){
            String consulta = "INSERT INTO Ludoteca VALUES(null, '" + j.getNombre() + "', '" + j.getAutor()+ "', '" + j.getCat1() +"', '" + j.getCat2() +"', '" + j.getCat3() + "', '" + j.getTipo()+ "', " + j.getJugMin() + ", " + j.getJugMax() + ", " + j.isDisponible() +");" ; 
            System.out.println("Consulta: " + consulta);
            insertarModificarEliminar(consulta);
            
        }

}
