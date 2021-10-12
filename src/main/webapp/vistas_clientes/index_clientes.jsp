<%@page import="conexion.Conexion"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="../css/estilos_1.css"> -->
<link rel="stylesheet" href="../css/estilos_cliente.css">
<link rel="stylesheet" href="../css/estilos_index.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script> 
<title>CRUD CLIENTES</title>  
</head>  
<body>  
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
	<jsp:include page="../encabezado.jsp" />
</header>
	
		
<sidebar id="sidebar">
<br>
<br>
	<div class="login">
		<div class= "clientes">
		<form action="addclientes.jsp" method="post">  
		<h1 style="margin-top: 30px; margin-left:-15px;">Ingresar cliente</h1><br>
			<table> 
				
				<tr><td><label for = "cedula_cliente">Cedula Cliente</label></td></tr>  
				<tr><td><input type="text" name="cedula_cliente"/></td></tr>  
				
				<tr><td><label for = "nomCliente">Nombre Cliente</label></td></tr>  
				<tr><td><input type="text" name="nombre_cliente"/></td></tr>  
				 
				<tr><td><label for = "Direccion">Direccion</label></td></tr>  
				<tr><td><input type="text" name="direccion_cliente"/></td></tr>  
				  
				<tr><td><label for = "Telefono">Telefono</label></td></tr>  
				<tr><td><input type="number" name="telefono_cliente"/></td></tr>  
				  
				<tr><td><label for = "correoCliente">Correo Electronico</label></td></tr>  
				<tr><td><input type="email" name="email_cliente"/></td></tr>    
				
				<tr><td colspan="2"><input type="submit" value="Agregar"/></td></tr>     
 
 		</table>
 		</form>
 			</div>
			</div>
               
</sidebar>

<content id="content">

		<%@page import="modelo.ClienteDao,entidad.*,java.util.*"%>  
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
		
		<br><br>
		<h3 style="margin-left: 30px;">LISTADO DE CLIENTES</h3>  <br>
		<%  
		List<Cliente> list=ClienteDao.getAllRecords();  
		request.setAttribute("list",list);  
		%>  
		  
		<table id="tabla_clientes" border="1" width="90%" class="table caption-top">  
		<tr><th>Cedula</th><th>Nombre y apellidos</th><th>Dirección</th><th>Teléfono</th><th>Correo</th><th>Modificar</th><th>Eliminar</th></tr>  
		<c:forEach items="${list}" var="u">  
		<tr><td>${u.getCedula_cliente()}</td><td>${u.getNombre_cliente()}</td><td>${u.getDireccion_cliente()}</td><td>${u.getTelefono_cliente()}</td><td>${u.getEmail_cliente()}</td> 
		<td><a href="editform.jsp?cedula_cliente=${u.getCedula_cliente()}" class="btn btn-warning btn-sm">Editar</a></td>
		
		
		
		<td><a href="deleteclientes.jsp?cedula_cliente=${u.getCedula_cliente()}" class="btn btn-danger btn-sm">Eliminar</a></td></tr>  
		</c:forEach>  
		</table>
</content>
        
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>  
</html> 