<%@page import="conexion.Conexion"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/estilos_usuarios.css">
<link rel="stylesheet" href="css/estilos_index.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Registro Usuarios</title>
</head>
<div id="registro">
<sidebar id="sidebar"> 
       	<div class="login">						
			<%
			Conexion con=new Conexion();
			con.getConexion();
			String d="",u="",c="",r="",e="";
			if(request.getParameter("doc")!=null){
			d=request.getParameter("doc");
			u=request.getParameter("usu");
			c=request.getParameter("cla");
			r=request.getParameter("rol");
			e=request.getParameter("est");
			}
			%>
			<div class= "usuario">
				<form action="ServletGestionUsuario" method="post">
					<h1>Formulario de  ingreso</h1><br><br>	
									
					<label for = "nomusuario">Nombres y apellidos</label><br><br>
					<input type="text" name="usu"  value="<%=d%>" placeholder = "Ingrese el nombre completo"><br><br>
					
					<label for = "documento">Cedula</label><br><br>
					<input type="text" name="doc" value="<%=u%>"  placeholder = "Ingrese el numero de cedula"><br><br>
					
					<label for = "clave">Contrasena</label><br><br>
					<input type="password" name="cla" value="<%=c%>" placeholder = "Ingrese la contrasena"><br><br>
						
					<label for = "rol">Cargo</label><br><br>
					<input type="text" name="rol" value="<%=r%>" placeholder = "Ingrese el cargo"><br><br>
					
					<label for = "estado">Estado</label><br><br>
					<input type="text" name="est" value="<%=e%>" placeholder = "Ingrese el estado"><br><br>					
						
					<input type="submit" name="btnins" value="Registrar">
					<input type="submit" name="btncon" value="Consultar">
					<input type="submit" name="btnact" value="Actualizar">
					<input type="submit" name="btneli" value="Eliminar">
				</form>
			</div>
		</div>
              
   	</sidebar>
</div>
	            
	<content class="content">
    	
	</content> 
</html>