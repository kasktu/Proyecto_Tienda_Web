<%@page import="modelo.ClienteDao"%>  
<jsp:useBean id="u" class="entidad.Cliente"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ClienteDao.update(u);  
response.sendRedirect("index_clientes.jsp");  
%>  