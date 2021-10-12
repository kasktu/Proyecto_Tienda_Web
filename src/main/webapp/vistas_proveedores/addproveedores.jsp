<%@page import="modelo.ProveedorDao"%>  
<jsp:useBean id="u" class="entidad.Proveedor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ProveedorDao.save(u);  
if(i>0){  
response.sendRedirect("index_proveedores.jsp");  
}else{  
response.sendRedirect("addproveedores-error.jsp");  
}  
%>  