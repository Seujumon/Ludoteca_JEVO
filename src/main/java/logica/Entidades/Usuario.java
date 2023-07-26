package logica.Entidades;

public class Usuario {
	private int id;
	private String nombre_de_usuario;
	private String contraseña;
	private boolean permisos_de_edicion;
	private String clave_modif;
	public Usuario(int id, String nombre_de_usuario, String contraseña, boolean permisos_de_edicion,
			String clave_modif) {
		super();
		this.id = id;
		this.nombre_de_usuario = nombre_de_usuario;
		this.contraseña = contraseña;
		this.permisos_de_edicion = permisos_de_edicion;
		this.clave_modif = clave_modif;
	}
	public Usuario() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre_de_usuario() {
		return nombre_de_usuario;
	}
	public void setNombre_de_usuario(String nombre_de_usuario) {
		this.nombre_de_usuario = nombre_de_usuario;
	}
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	public boolean isPermisos_de_edicion() {
		return permisos_de_edicion;
	}
	public void setPermisos_de_edicion(boolean permisos_de_edicion) {
		this.permisos_de_edicion = permisos_de_edicion;
	}
	public String getClave_modif() {
		return clave_modif;
	}
	public void setClave_modif(String clave_modif) {
		this.clave_modif = clave_modif;
	}
	

}
