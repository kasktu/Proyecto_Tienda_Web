<%@page import="modelo.ProveedorDao"%>  
<jsp:useBean id="u" class="entidad.Proveedor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ProveedorDao.update(u);  
response.sendRedirect("index_proveedores.jsp");  
%>  