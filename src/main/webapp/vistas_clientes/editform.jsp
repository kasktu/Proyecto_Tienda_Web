<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar cliente</title>
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
<%@page import="modelo.ClienteDao,entidad.Cliente"%>  
  
<%  
String cedula_cliente=request.getParameter("cedula_cliente");  
Cliente u=ClienteDao.getRecordById(Integer.parseInt(cedula_cliente));  
%>   
  
<h1>Editar cliente</h1>  
<form action="editclientes.jsp" method="post">  
<table>  
<tr><td>Cedula cliente:</td><td>  
<input type="number" name="cedula_cliente" value="<%=u.getCedula_cliente() %>"/>    
<tr><td>Nombre clientes:</td><td>  
<input type="text" name="nombre_cliente" value="<%= u.getNombre_cliente()%>"/></td></tr>  
<tr><td>Dirección:</td><td>  
<input type="text" name="direccion_cliente" value="<%= u.getDireccion_cliente()%>"/></td></tr>  
<tr><td>Telefono:</td><td>  
<input type="number" name="telefono_cliente" value="<%= u.getTelefono_cliente()%>"/></td></tr>  
<tr><td>Correo electronico:</td><td>  
<input type="email" name="email_cliente" value="<%= u.getEmail_cliente()%>"/></td></tr>


<tr><td colspan="2"><input type="submit" value="Editar cliente"/></td></tr>  
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