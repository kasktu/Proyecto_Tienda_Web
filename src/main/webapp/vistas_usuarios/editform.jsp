<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar usuario</title>
<link rel="stylesheet" href="css/estilos_1.css">
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script>
</head>
<body>
	
	
	
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
	<jsp:include page="../encabezado.jsp" />
</header>

<%@page import="modelo.UserDao,entidad.User"%>  
  
<%  
String cedula_usuario=request.getParameter("cedula_usuario");  
User u=UserDao.getRecordById(Integer.parseInt(cedula_usuario));  
%>   
  
<h1>Editar usuario</h1>  
<form action="edituser.jsp" method="post">  
<table>  
<tr><td>Cédula:</td><td>  
<input type="number" name="cedula_usuario" value="<%=u.getCedula_usuario() %>" readonly onmousedown="return false;"/>    
<tr><td>Nombre y apellidos:</td><td>  
<input type="text" name="nombre_usuario" value="<%= u.getNombre_usuario()%>"/></td></tr>  
<tr><td>Contraseña:</td><td>  
<input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  
<tr><td>Correo electronico:</td><td>  
<input type="email" name="email_usuario" value="<%= u.getEmail_usuario()%>"/></td></tr>  
<tr><td>Usuario:</td><td>  
<input type="text" name="usuario" value="<%= u.getUsuario()%>"/></td></tr>

 
<tr><td colspan="2"><input type="submit" value="Editar usuario"/></td></tr>  
</table>  
</form> 



<content id="content">
			
</content>
        
        <!-- <footer id="footer">
			<p>Pie de pagina</p>
        </footer> -->
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>
</html>