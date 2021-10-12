<%@page import="modelo.ClienteDao"%>  
<jsp:useBean id="u" class="entidad.Cliente"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ClienteDao.save(u);  
if(i>0){  
response.sendRedirect("index_clientes.jsp");  
}else{  
response.sendRedirect("addclientes-error.jsp");  
}  
%>  