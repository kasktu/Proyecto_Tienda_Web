package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entidad.Login;
import modelo.LoginDao;

@WebServlet("/Login")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre_usuario = request.getParameter("nombre");
		String clave = request.getParameter("clave");

		LoginDao modelo = new LoginDao();
		Login login = modelo.iniciarSesion(nombre_usuario, clave);
		PrintWriter out = response.getWriter();
		
		if (login == null) {
			HttpSession sesion = request.getSession();
			out.println("<html><head></head><body onload=\"alert('Ingreso Correcto'); window.location='index.jsp' \"></body></html>");
			System.out.println("sin datos");
			response.sendRedirect("index.jsp");
		}else{
			HttpSession sesion = request.getSession();
			sesion.setAttribute("usuario", login);
			response.sendRedirect("vistas_usuarios/index_usuarios.jsp");
		}
	}

}
