<%@page import="modelo.ProductoDao"%>  
<jsp:useBean id="u" class="entidad.Producto"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
ProductoDao.delete(u);  
response.sendRedirect("index_productos.jsp");  
%>  