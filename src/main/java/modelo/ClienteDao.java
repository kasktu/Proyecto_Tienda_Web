package modelo;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import entidad.Cliente;  
public class ClienteDao {  
  
 public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_tienda","usuario","usuario123");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
 
public static int save(Cliente u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into clientes(direccion_cliente,email_cliente,nombre_cliente,telefono_cliente,cedula_cliente) values(?,?,?,?,?)");  
        
        ps.setString(1,u.getDireccion_cliente());
        ps.setString(2,u.getEmail_cliente());
        ps.setString(3,u.getNombre_cliente());
        ps.setString(4,u.getTelefono_cliente());
        ps.setInt(5,u.getCedula_cliente());  
 
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(Cliente u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update clientes set direccion_cliente=?,email_cliente=?,nombre_cliente=?,telefono_cliente=? where cedula_cliente=?");  
        ps.setString(1,u.getDireccion_cliente());
        ps.setString(2,u.getEmail_cliente());
        ps.setString(3,u.getNombre_cliente());
        ps.setString(4,u.getTelefono_cliente());
        ps.setInt(5,u.getCedula_cliente()); 
  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Cliente u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from clientes where cedula_cliente=?");  
        ps.setInt(1,u.getCedula_cliente());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Cliente> getAllRecords(){  
    List<Cliente> list=new ArrayList<Cliente>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from clientes");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Cliente u=new Cliente();  
            u.setCedula_cliente(rs.getInt("cedula_cliente"));  
            u.setDireccion_cliente(rs.getString("direccion_cliente"));  
            u.setEmail_cliente(rs.getString("email_cliente"));  
            u.setNombre_cliente(rs.getString("nombre_cliente"));  
            u.setTelefono_cliente(rs.getString("telefono_cliente"));  
            list.add(u);  
            
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static Cliente getRecordById(int cedula_cliente){  
    Cliente u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from clientes where cedula_cliente=?");  
        ps.setInt(1,cedula_cliente);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Cliente();  
            u.setCedula_cliente(rs.getInt("cedula_cliente"));  
            u.setDireccion_cliente(rs.getString("direccion_cliente"));  
            u.setEmail_cliente(rs.getString("email_cliente"));  
            u.setNombre_cliente(rs.getString("nombre_cliente"));  
            u.setTelefono_cliente(rs.getString("telefono_cliente"));  
            
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  