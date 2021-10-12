package modelo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import conexion.Conexion;
import entidad.Login;

public class LoginDao 
{
	public Login iniciarSesion(String nombre_usuario, String password) {
		Login usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.idlogin, U.nombre_usuario, U.password FROM login U WHERE U.nombre_usuario = ? AND U.password = ?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, nombre_usuario);
			pstm.setString(2, password);
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				usuario = new Login();
				usuario.setIdUsuario(rs.getInt("idlogin"));
				usuario.setNombre(rs.getString("nombre_usuario"));
				usuario.setClave(rs.getString("password"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (pstm != null) {
					pstm.close();
				}
				
				if (cn != null) {
					cn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return usuario;
	}
}
