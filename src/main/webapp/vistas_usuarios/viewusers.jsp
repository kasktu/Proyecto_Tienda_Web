<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VISTA USUARIOS</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/estilos_usuarios.css">
<link rel="stylesheet" href="../css/estilos_index.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
		
<div id="registro">
<sidebar id="sidebar"> 
       	<div class="login">						
	
		
				<br><br>
				<br><br>
				
				<form action="../vistas_usuarios/viewusers.jsp" method="post">
					<input type="submit" name="btnins" value="Listado de usuarios">
				</form>
				
				<br><br>
				<br><br>
				
				<form action="../vistas_clientes/viewclientes.jsp" method="post">
					<input type="submit" name="btnins" value="Listado de clientes">
				</form>
				
				<br><br>
				<br><br>
				
				<form action="../vistas_ventas/viewventas.jsp" method="post">
					<input type="submit" name="btnins" value="Ventas por clientes">
				</form>
		</div>
              
   	</sidebar>
</div>

<content id="content">
	


<%@page import="modelo.UserDao,entidad.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<br><br>
<h3>LISTADO DE USUARIOS</h3>  <br>

<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table id="tabla_clientes" border="1" width="90%" class="table caption-top">  
<tr><th>Identificaci??n</th><th>Nombre</th><th>Contrase??a</th><th>Email</th><th>Usuario</th><tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getCedula_usuario()}</td><td>${u.getNombre_usuario()}</td><td>${u.getPassword()}</td>  
<td>${u.getEmail_usuario()}</td><td>${u.getUsuario()}</td> 
<%-- <td><a href="editform.jsp?cedula_usuario=${u.getCedula_usuario()}" class="btn btn-warning btn-sm">Editar</a></td>



<td><a href="deleteuser.jsp?cedula_usuario=${u.getCedula_usuario()}" class="btn btn-danger btn-sm">Eliminar</a></td></tr>  --%> 
</c:forEach>  
</table>
<!-- <a href="adduserform.jsp" class="btn btn-success btn-sm" role="button" aria-pressed="true">Agregar Nuevo Usuario</a> -->

			
</content>
        
        <footer id="footer">
			
        </footer>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>
</html>