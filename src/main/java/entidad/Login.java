package entidad;

public class Login
{
	private int idUsuario;
	private String nombre_usuario;
	private String password;

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNombre() {
		return getNombre_usuario();
	}

	public void setNombre(String nombre_usuario) {
		this.setNombre_usuario(nombre_usuario);
	}

	public String getClave() {
		return password;
	}

	public void setClave(String password) {
		this.password = password;
	}

	public String getNombre_usuario() {
		return nombre_usuario;
	}

	public void setNombre_usuario(String nombre_usuario) {
		this.nombre_usuario = nombre_usuario;
	}

}

