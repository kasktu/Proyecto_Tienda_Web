<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Encabezado</title>
</head>
<body>
	<a href="../index.jsp?tipo=cerrarSesion">Cerrar sesión</a>
	Bienvenido ${sessionScope.usuario.nombre_usuario}
</body>
<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
<div id="navigador">
	<nav id="nav">
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #1EA7F1;">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Menu Tienda</a>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a
							style="margin-left: 10px; border: none"
							class="btn btn-outline-light" href="../vistas_usuarios/index_usuarios.jsp">Usuarios</a></li>
						<li class="nav-item"><a
							style="margin-left: 10px; border: none"
							class="btn btn-outline-light" href="../vistas_clientes/index_clientes.jsp">Clientes</a></li>
						<li class="nav-item"><a
							style="margin-left: 10px; border: none"
							class="btn btn-outline-light" href="../vistas_proveedores/index_proveedores.jsp">Proveedores</a>
						</li>
						<li class="nav-item"><a
							style="margin-left: 10px; border: none"
							class="btn btn-outline-light" href="../vistas_productos/index_productos.jsp">Productos</a>
						</li>
						<li class="nav-item"><a
							style="margin-left: 10px; border: none"
							class="btn btn-outline-light" href="#">Ventas</a>
						</li>
						<li class="nav-item"><a
							style="margin-left: 10px; border: none"
							class="btn btn-outline-light" href="#">Reportes</a></li>
				</div>
			</div>
		</nav>
	</nav>
</div>
</html>