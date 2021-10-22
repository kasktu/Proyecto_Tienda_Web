<%@page import="modelo.ProductoDao"%>  
<jsp:useBean id="u" class="entidad.Producto"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  

int i=ProductoDao.consulta(u);  
if(i>0){  
response.sendRedirect("index_proveedores.jsp");  
}else{  
response.sendRedirect("addproveedores-error.jsp");  
}  
%>  