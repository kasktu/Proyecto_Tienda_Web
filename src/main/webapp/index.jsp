<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Tienda Generica</title>
<link rel="stylesheet" href="css/estilos_index.css">
</head>

<body>

<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
		<div>Tienda<span>Generica</span></div>
		</div>
		<br>
		<div class="login">
		<form action="principal.jsp" method="post">
				<input type="text" placeholder="Ingrese usuario" name="nombre"><br>
				<input type="password" placeholder="Ingrese contraseña" name="clave"><br>
				
				<input type="submit"  value="Ingresar">
				<!-- <button type="submit" >Ingresar</button> -->
				<c:set var="mensaje" value="${requestScope.mensaje}" />
				<c:if test="${not empty mensaje}">
				</c:if>
				<input type="submit" value="Registrarse">
		</form>
		</div>
		

</body>
</html> 
