package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
  @author Juan Seura
 */
public abstract class DAO {
    protected Connection conexion= null;
    protected ResultSet resultado = null;
    protected Statement sentencia = null;
    protected PreparedStatement consulta = null;
    
    private final String USER = "root";
    private final String PASSWORD = "";
//    private final String DATABASE = "JevoJuegos";
    private final String DRIVER = "com.mysql.cj.jdbc.Driver";
    
    protected void conectarBaseDeDatos(){
        try {
        	System.out.println("Conectando");
            Class.forName(DRIVER);
            String urlBaseDeDatos = "jdbc:mysql://localhost:3306/JevoJuegos";
            this.conexion = DriverManager.getConnection(urlBaseDeDatos, USER, PASSWORD);
            
            
            
        } catch(ClassNotFoundException ex) {
        	System.out.println("ERROR");
            System.out.println(ex);
        }
        catch(SQLException ex) {
            System.out.println(ex);
        }
    }
    protected void desconectarBaseDeDatos(){
        try {
            if(resultado != null){
                resultado.close();
            }
            if(sentencia != null){
                sentencia.close();
            }
            if(conexion != null){
                conexion.close();
            }
        } catch (Exception e) {
            System.out.println(e);;
        }
    }
    /**
     * 
     * @param consulta Es la consulta que se recibe para insertar modificar o eliminar
     */
    protected void insertarModificarEliminar(String consulta){
        try {
            conectarBaseDeDatos();
            sentencia = conexion.createStatement();
            sentencia.executeUpdate(consulta);
        } catch (SQLException ex) {
            
            System.out.println(ex);;
        } finally{
            desconectarBaseDeDatos();
        }
    }
    /**
     * @resultado es de tipo ResulSet y guarda el resultado de la consulta. 
     * @param consulta recibe por parámetro una consulta
     */
    protected void consultarBaseDeDatos(String consulta)throws Exception{
        try {
        	conectarBaseDeDatos();
        	this.consulta = this.conexion.prepareStatement(consulta);
            sentencia = conexion.createStatement();
            resultado = this.consulta.executeQuery();
        } catch (Exception e) {
            System.out.println(e);;
        }
    }

}
