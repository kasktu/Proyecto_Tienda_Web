package modelo;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;


import entidad.Producto;  
public class ProductoDao {  
  
 public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_tienda","usuario","usuario123");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  

 
public static int save(Producto u){  
    int status=0; 
    System.out.println(u);
    System.out.println(u.getPrecio_venta());
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into productos(codigo_producto,ivacompra,nitproveedor,precio_compra,precio_venta,nombre_producto) values(?,?,?,?,?,?)");  
        ps.setDouble(1,u.getCodigo_producto());
        ps.setDouble(2, u.getIvacompra());
        ps.setInt(3,u.getNitproveedor());
        ps.setDouble(4,u.getPrecio_compra());
        ps.setDouble(5,u.getPrecio_venta());
        ps.setString(6,u.getNombre_producto());  
 
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(Producto u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update productos set ivacompra=?,nitproveedor=?,precio_compra=?,precio_venta=?,nombre_producto=? where codigo_producto=?");  
        
        ps.setDouble(1,u.getIvacompra());
        ps.setInt(2, u.getNitproveedor());
        ps.setDouble(3,u.getPrecio_compra());
        ps.setDouble(4,u.getPrecio_venta());
        ps.setString(5,u.getNombre_producto());
        ps.setInt(6,u.getCodigo_producto());  
 
  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Producto u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from productos where codigo_producto=?");  
        ps.setInt(1,u.getCodigo_producto());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Producto> getAllRecords(){  
    List<Producto> list=new ArrayList<Producto>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from productos");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Producto u=new Producto();  
            u.setIvacompra(rs.getDouble("ivacompra"));  
            u.setNitproveedor(rs.getInt("nitproveedor"));
            u.setPrecio_compra(rs.getDouble("precio_compra"));  
            u.setPrecio_venta(rs.getDouble("precio_venta")); 
            u.setNombre_producto(rs.getString("nombre_producto"));  
            u.setCodigo_producto(rs.getInt("codigo_producto")); 
     
            list.add(u);  
            
            
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public int consulta(Producto prod){  
    Producto u=null; 
    int codigo_producto=prod.getCodigo_producto();
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from productos where codigo_producto=?");  
        ps.setInt(1,codigo_producto);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Producto();  
            
            u.setIvacompra(rs.getDouble("ivacompra"));  
            u.setNitproveedor(rs.getInt("nitproveedor"));
            u.setPrecio_compra(rs.getDouble("precio_compra"));  
            u.setPrecio_venta(rs.getDouble("precio_venta")); 
            u.setNombre_producto(rs.getString("nombre_producto"));  
            u.setCodigo_producto(rs.getInt("codigo_producto"));
            
            
        }  
    }catch(Exception e){System.out.println(e);}  
    int cod=u.getCodigo_producto();  
    return cod;  
}  


//private void cargarProducto(HttpServletRequest request, HttpServletResponse response)
//	    throws SQLException, IOException, ServletException{
//	    	Part filePart = request.getPart("fileCSV"); 
//	        InputStream fileContent = filePart.getInputStream();
//	        
//	        Reader in = new InputStreamReader(fileContent);
//	        
//	        CSVReader reader;
//	        
//	        String[] fila = null;
//	        try {
//	        	reader = new CSVReader(new InputStreamReader(fileContent));
//	        
//	        	while((fila = reader.readNext()) != null) {
//	        		String a = fila[0];
//	        		String b = fila[1];
//	        		String c = fila[2];
//	        		String d = fila[3];
//	        		String e = fila[4];
//	        		String f = fila[5];
//	        		int codigo_producto = Integer.valueOf(a);
//	        		String nombre_producto = b;
//	        		int nitproveedor = Integer.valueOf(c);
//	        		int precio_compra = Integer.valueOf(d);
//	        		int ivacompra = Integer.valueOf(e);
//	        		int precio_venta = Integer.valueOf(f);
//	        		System.out.println(codigo_producto +" "+ nombre_producto +" "+ nitproveedor +" "+ precio_compra +" "+ ivacompra +" "+ precio_venta);
//	        		//Producto newProducto = new Producto(codigo_producto, nombre_producto, nitproveedor, precio_compra, ivacompra, precio_venta);
//	        		//ProductoDAO.crearProducto(newProducto);	
//	        	}
//	        	RequestDispatcher dispatcher = request.getRequestDispatcher("productos-list.jsp");
//	            dispatcher.forward(request, response);
//	        } catch(Exception e) {
//	        	System.out.println(e);
//	        }
//	        in.close();
//		}
}  