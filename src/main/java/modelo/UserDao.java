package modelo;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import entidad.User;  
public class UserDao {  
  
 public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_tienda","usuario","usuario123");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into usuarios(nombre_usuario,password,email_usuario,usuario,cedula_usuario) values(?,?,?,?,?)");  
        ps.setString(1,u.getNombre_usuario());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getEmail_usuario());  
        ps.setString(4,u.getUsuario());
        ps.setInt(5,u.getCedula_usuario());
        
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update usuarios set nombre_usuario=?,password=?,email_usuario=?,usuario=? where cedula_usuario=?");  
        ps.setString(1,u.getNombre_usuario());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getEmail_usuario());  
        ps.setString(4,u.getUsuario());  
        ps.setInt(5,u.getCedula_usuario());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from usuarios where cedula_usuario=?");  
        ps.setInt(1,u.getCedula_usuario());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from usuarios");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setCedula_usuario(rs.getInt("cedula_usuario"));  
            u.setNombre_usuario(rs.getString("nombre_usuario"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail_usuario(rs.getString("email_usuario"));  
            u.setUsuario(rs.getString("usuario"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int cedula_usuario){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from usuarios where cedula_usuario=?");  
        ps.setInt(1,cedula_usuario);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setCedula_usuario(rs.getInt("cedula_usuario"));  
            u.setNombre_usuario(rs.getString("nombre_usuario"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail_usuario(rs.getString("email_usuario"));  
            u.setUsuario(rs.getString("usuario"));  
            
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  