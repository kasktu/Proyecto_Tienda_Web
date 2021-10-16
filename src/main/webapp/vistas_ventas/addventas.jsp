<%@page import="modelo.UserDao"%>  
<jsp:useBean id="u" class="entidad.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("index_usuarios.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  