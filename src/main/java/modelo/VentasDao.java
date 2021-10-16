package modelo;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import entidad.Ventas;  
public class VentasDao {  
  
 public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_tienda","usuario","usuario123");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(Ventas u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into ventas(codigo_venta, cedula_cliente, cedula_usuario, ivaventa_total_venta,valor_venta) values(?,?,?,?,?,?)");  
        ps.setInt(1,u.getCodigo_venta());  
        ps.setInt(2,u.getCedula_cliente());  
        ps.setInt(3,u.getCedula_usuario());  
        ps.setDouble(4,u.getIvaventa());
        ps.setDouble(5,u.getTotal_venta());
        ps.setDouble(6,u.getValor_venta());
        
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  

//public static int update(Ventas u){  
//    int status=0;  
//    try{  
//        Connection con=getConnection();  
//        PreparedStatement ps=con.prepareStatement(  
//"update ventas set nombre_usuario=?,password=?,email_usuario=?,usuario=? where cedula_usuario=?");  
//        ps.setString(1,u.getNombre_usuario());  
//        ps.setString(2,u.getPassword());  
//        ps.setString(3,u.getEmail_usuario());  
//        ps.setString(4,u.getUsuario());  
//        ps.setInt(5,u.getCedula_usuario());  
//        status=ps.executeUpdate();  
//    }catch(Exception e){System.out.println(e);}  
//    return status;  
//}  

//public static int delete(Ventas u){  
//    int status=0;  
//    try{  
//        Connection con=getConnection();  
//        PreparedStatement ps=con.prepareStatement("delete from ventas where cedula_usuario=?");  
//        ps.setInt(1,u.getCedula_usuario());  
//        status=ps.executeUpdate();  
//    }catch(Exception e){System.out.println(e);}  
//  
//    return status;  
//}  


public static List<Ventas> getAllRecords(){  
    List<Ventas> list=new ArrayList<Ventas>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from ventas");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Ventas u=new Ventas();  
            u.setCodigo_venta(rs.getInt("codigo_venta"));  
            u.setCedula_cliente(rs.getInt("cedula_cliente"));  
            u.setCedula_usuario(rs.getInt("cedula_usuario"));  
            u.setIvaventa(rs.getDouble("ivaventa"));  
            u.setTotal_venta(rs.getDouble("total_venta"));  
            u.setValor_venta(rs.getDouble("valor_venta"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
//public static Ventas getRecordById(int cedula_usuario){  
//    Ventas u=null;  
//    try{  
//        Connection con=getConnection();  
//        PreparedStatement ps=con.prepareStatement("select * from ventas where cedula_usuario=?");  
//        ps.setInt(1,cedula_usuario);  
//        ResultSet rs=ps.executeQuery();  
//        while(rs.next()){  
//            u=new Ventas();  
//            u.setCedula_usuario(rs.getInt("cedula_usuario"));  
//            u.setNombre_usuario(rs.getString("nombre_usuario"));  
//            u.setPassword(rs.getString("password"));  
//            u.setEmail_usuario(rs.getString("email_usuario"));  
//            u.setUsuario(rs.getString("usuario"));  
//            
//        }  
//    }catch(Exception e){System.out.println(e);}  
//    return u;  
//}  
}  