<%@page import="modelo.ProductoDao"%>  
<jsp:useBean id="u" class="entidad.Producto"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ProductoDao.save(u);  
if(i>0){  
response.sendRedirect("index_productos.jsp");  
}else{  
response.sendRedirect("addproductos-error.jsp");  
}  
%>  