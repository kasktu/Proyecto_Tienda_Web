<%@page import="conexion.Conexion"%>
<%@page import="modelo.ProductoDao"%>  

<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="../css/estilos_1.css"> -->
<link rel="stylesheet" href="../css/estilos_productos.css">
<link rel="stylesheet" href="../css/estilos_index.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script> 
<title>CRUD PRODUCTOS</title>  
</head>  
<body>  
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
	<jsp:include page="../encabezado.jsp" />
</header>
		
<sidebar id="sidebar">

	<div class="login">
	
	<div>
	
	<h1 class="h1TittleCargar">Cargar archivo</h1>
		<form action="cargar_productos" method="post" enctype="multipart/form-data">
			<label class="labelCargar">Cargue un archivo:</label>
			<input class="btnSeleccionar" type="file" name="fileCSV">
			<br>
			<button class="btnCargar" name="cargar">Cargar</button>
		</form>
	</div>
	
	
		<div class= "productos">

		<form action="addproductos.jsp" method="post"> 
		


<br>
		<h1>Formulario de productos</h1><br>
			<table> 
		
				
				<tr><td><label for = "codigo_producto">Codigo producto</label></td></tr>
				<tr><td><input type="number" name="codigo_producto"/></td></tr>
				<tr><td><label for = "nombre_producto">Nombre producto</label></td></tr>
				<tr><td><input type="text" name="nombre_producto"/></td></tr>  
				<tr><td><label for = "ivacompra">IVA Producto</label></td></tr>
				<tr><td><input type="number" name="ivacompra"/></td></tr>  
				<tr><td><label for = "nitproveedor">NIT Proveedor</label></td></tr>
				<tr><td><input type="number" name="nitproveedor"/></td></tr>  
				<tr><td><label for = "precio_de_compra">Precio de compra</label></td></tr>
				<tr><td><input type="number" name="precio_de_compra"/></td></tr>  
				<tr><td><label for = "precio_venta">Precio de venta</label></td></tr>
				<tr><td><input type="number" name="precio_venta"//></td></tr>    
				<tr><td colspan="2"><input type="submit" value="Agregar"/></td></tr>     
				
				
			
 
 			</table>
 		</form>
 		</div>
	</div>
          
          
  <!--  <div class="container">
	<div>
	<h3 class="h3TittleCargar">Cargar Archivo CSV para cargar Productos</h3>
		<form action="cargar_productos" method="post" enctype="multipart/form-data">
			<label class="labelCargar">Cargue un archivo:</label>
			<input class="btnSeleccionar" type="file" name="fileCSV">
			<button class="btnCargar" name="cargar">Cargar</button>
		</form>
	</div> -->
	
	<br><br>
          
               
</sidebar>

<content id="content">

		<%@page import="modelo.ProductoDao,entidad.*,java.util.*"%>  
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
		
		<br><br>
		<h3>LISTADO DE PRODUCTOS</h3>  <br>
		<%
		List<Producto> list=ProductoDao.getAllRecords();  
		request.setAttribute("list",list);  
		%>  
		  
		<table id="tabla_productos" border="1" width="90%" class="table caption-top">  
		<tr><th>Codigo producto</th><th>Nombre producto</th><th>IVA compra</th><th>NIT proveedor</th><th>Precio compra</th><th>Precio venta</th><th>Modificar</th><th>Eliminar</th></tr>  
		<c:forEach items="${list}" var="u">  
		<tr><td>${u.getCodigo_producto()}</td><td>${u.getNombre_producto()}</td><td>${u.getIvacompra()}</td><td>${u.getNitproveedor()}</td><td>${u.getPrecio_compra()}</td><td>${u.getPrecio_venta()}</td> 
		
		
		<td><a href="editform.jsp?codigo_producto=${u.getCodigo_producto()}" class="btn btn-warning btn-sm">Editar</a></td>
		<td><a href="deleteproductos.jsp?codigo_producto=${u.getCodigo_producto()}" class="btn btn-danger btn-sm">Eliminar</a></td></tr>  
		
		
	
		</c:forEach>  
		</table>
</content>
        
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>  
</html> 