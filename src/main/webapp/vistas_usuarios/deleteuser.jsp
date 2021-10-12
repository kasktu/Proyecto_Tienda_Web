<%@page import="modelo.UserDao"%>  
<jsp:useBean id="u" class="entidad.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("index_usuarios.jsp");  
%>  