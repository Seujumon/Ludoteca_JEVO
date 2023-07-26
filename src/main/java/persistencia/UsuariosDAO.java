package persistencia;

public class UsuariosDAO extends DAO{
	/**
	 * Método provisorio para la entrega. 
	 */
	public boolean comprobarContraseña(String ingreso) {
		
		
		try {
			String consulta = "SELECT clave_modif FROM Usuarios WHERE id=1";
			consultarBaseDeDatos(consulta);
			String pass = "";
			if(resultado.next()) {
				pass = resultado.getString(1);
				 
			}
			desconectarBaseDeDatos();
			return ingreso.equals(pass);
		} catch (Exception e) {
			System.out.println(e);
			desconectarBaseDeDatos();
			return false;
		}
		
	}

}
