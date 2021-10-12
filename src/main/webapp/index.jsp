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
 <c:if test="${not empty mensaje}">
    <script>
         alert("${mensaje}");
    </script>
</c:if>
<body>
 <c:if test="${not empty mensaje}">
	<script>
         alert("${mensaje}");
    </script>
    </c:if>
<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
		<div>Tienda<span>Generica</span></div>
		</div>
		<br>
		<div class="login" id="ingreso">
		<form id="formLogin" action="Login">
				<input type="hidden" name="tipo" value="iniciarSesion" />
		
				<input id="datos_login" type="text" placeholder="Ingrese usuario" name="nombre"><br>
				<input id="datos_login" type="password" placeholder="Ingrese contraseña" name="clave"><br>
				
				<input id="btn_login" type="submit"  value="Ingresar" onclick="return Confirmar_datos">
				<!-- <button type="submit" >Ingresar</button> -->
				<c:set var="mensaje" value="${requestScope.mensaje}" />
				<c:if test="${not empty mensaje}">
				</c:if>
				<input id="btn_login" type="submit" value="Registrarse" >
		</form>
		</div>
		

</body>
</html> 

