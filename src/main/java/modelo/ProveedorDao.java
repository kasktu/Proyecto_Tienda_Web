package modelo;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import entidad.Proveedor;  
public class ProveedorDao {  
  
 public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_tienda","usuario","usuario123");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(Proveedor u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into proveedores(nitproveedor,nombre_proveedor,telefono_proveedor,ciudad_proveedor,direccion_proveedor) values(?,?,?,?,?)");  
        ps.setInt(1,u.getNitproveedor());  
        ps.setString(2,u.getNombre_proveedor());
        ps.setString(3,u.getTelefono_proveedor());
        ps.setString(4,u.getCiudad_proveedor());
        ps.setString(5,u.getDireccion_proveedor());
 
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(Proveedor u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update proveedores set nombre_proveedor=?,telefono_proveedor=?,ciudad_proveedor=?,direccion_proveedor=? where nitproveedor=?");  
        
        ps.setString(1,u.getNombre_proveedor());
        ps.setString(2,u.getTelefono_proveedor());
        ps.setString(3,u.getCiudad_proveedor());
        ps.setString(4,u.getDireccion_proveedor());
        ps.setInt(5,u.getNitproveedor());  
  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Proveedor u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from proveedores where nitproveedor=?");  
        ps.setInt(1,u.getNitproveedor());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Proveedor> getAllRecords(){  
    List<Proveedor> list=new ArrayList<Proveedor>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from proveedores");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Proveedor u=new Proveedor();  
            u.setNitproveedor(rs.getInt("nitproveedor"));  
            u.setNombre_proveedor(rs.getString("nombre_proveedor"));  
            u.setTelefono_proveedor(rs.getString("telefono_proveedor"));  
            u.setCiudad_proveedor(rs.getString("ciudad_proveedor"));  
            u.setDireccion_proveedor(rs.getString("direccion_proveedor"));  
            list.add(u);  
            
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static Proveedor getRecordById(int nitproveedor){  
    Proveedor u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from proveedores where nitproveedor=?");  
        ps.setInt(1,nitproveedor);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Proveedor();  
            u.setNitproveedor(rs.getInt("nitproveedor"));  
            u.setNombre_proveedor(rs.getString("nombre_proveedor"));  
            u.setTelefono_proveedor(rs.getString("telefono_proveedor"));  
            u.setCiudad_proveedor(rs.getString("ciudad_proveedor"));  
            u.setDireccion_proveedor(rs.getString("direccion_proveedor"));  
            
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  