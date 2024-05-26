package PaqueteByteBakery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BDcontrollerBBC {
	private Connection conexion;

	public BDcontrollerBBC() {
		
		super();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			this.conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/bytebakerycoffee","root","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConexion() {
		return conexion;
	}

	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}
	
	

	
	/**
	 * metodo que recibe por parametro los datos de un cliente y lo da de alta en la base de datos
	 * @param id_cliente
	 * @param dni
	 * @param nombre
	 * @param apellidos
	 * @param direccion
	 * @param codigoPostal
	 * @param provincia
	 */
	public void altaCliente(int id_cliente, String dni, String nombre, String apellidos, String direccion, String codigoPostal, String provincia) {
	    String consulta = "INSERT INTO clientes VALUES (?, ?, ?, ?, ?, ?, ?)";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_cliente);
	        preparedStatement.setString(2, dni);
	        preparedStatement.setString(3, nombre);
	        preparedStatement.setString(4, apellidos);
	        preparedStatement.setString(5, direccion);
	        preparedStatement.setString(6, codigoPostal);
	        preparedStatement.setString(7, provincia);
	        preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}


	
	/**
	 * metodo que recibe por parametro el id de un cliente y lo da de baja
	 * @param id_cliente
	 */
	public void bajaCliente(int id_cliente) {
	    String consulta = "DELETE FROM clientes WHERE id_cliente = ?";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_cliente);
	        preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	
	/**
	 * 
	 * @param id_cliente
	 * @return boolean true si existe el cliente
	 */
	public boolean existeCliente(int id_cliente) {
	    String consulta = "SELECT * FROM clientes WHERE id_cliente = ?";
	    boolean existe = false;
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_cliente);
	        ResultSet rs = preparedStatement.executeQuery();
	        if (rs.next()) {
	            existe = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return existe;
	}
	
	
	
	/**
	 * recobe por parametro los datos de un producto y lo da de alta en la base de datos
	 * @param id_producto
	 * @param nombre_producto
	 * @param tipo
	 * @param descripcion
	 * @param precio
	 */
	public void altaProducto(int id_producto,String nombre_producto,String tipo, String descripcion, double precio) {
	    String consulta = "INSERT INTO productos VALUES (?, ?, ?, ?, ?)";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_producto);
	        preparedStatement.setString(2, nombre_producto);
	        preparedStatement.setString(3, tipo);
	        preparedStatement.setString(4, descripcion);
	        preparedStatement.setDouble(5, precio);
	        preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	
	//BAJA PRODUCTO

	/**
	 * 
	 * 
	 * @param id_producto
	 */
	public void bajaProducto(int id_producto) {
	    String consulta = "DELETE FROM productos WHERE id_producto = ?";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_producto);
	        preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	
	//COMPRUEBA SI EXISTE EL PRODUCTO

	/**
	 * 
	 * @param id_producto
	 * @return boolean true sio existe el producto
	 */
	public boolean existeProducto(int id_producto) {
	    String consulta = "SELECT * FROM productos WHERE id_producto = ?";
	    boolean existe = false;
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_producto);
	        ResultSet rs = preparedStatement.executeQuery();
	        if (rs.next()) {
	            existe = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return existe;
	}

	
	//DEVUELVE TODOS LOS CLIENTES
	
	
	
	/**
	 * metodo que devuelve todos los clientes de la base de datos
	 * @return ArrayList clientes
	 */
	public ArrayList<Cliente> todosClientes() {
	    ArrayList<Cliente> clientes = new ArrayList<Cliente>();
	    String consulta = "SELECT * FROM clientes";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        ResultSet rs = preparedStatement.executeQuery();
	        while (rs.next()) {
	            Cliente cliente = new Cliente(rs.getInt("id_cliente"), rs.getString("dni"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("cp"), rs.getString("provincia"));
	            clientes.add(cliente);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return clientes;
	}

	
	
	
	
	/**
	 * metodo que apartir de un id devuelve el objeto cliente
	 * @param id_cliente
	 * @return Cliente
	 */
	public Cliente dameCliente(int id_cliente) {
	    Cliente cliente = new Cliente();
	    String consulta = "SELECT * FROM clientes WHERE id_cliente='"+id_cliente+"'"; // Limita la consulta a un solo resultado
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        ResultSet rs = preparedStatement.executeQuery();
	        if (rs.next()) {
	            cliente = new Cliente(rs.getInt("id_cliente"), rs.getString("dni"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("cp"), rs.getString("provincia"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return cliente;
	}
	
	
	
	
	
	/**
	 * metodo que devuelce todos los productos de la base de datos
	 * @return ArrayList de productos
	 */
	public ArrayList<Producto>todosProductos(){
		ArrayList<Producto>productos= new ArrayList<Producto>();
		String consulta="SELECT * FROM productos";
		try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        ResultSet rs = preparedStatement.executeQuery();
	        while (rs.next()) {
	            productos.add(new Producto(rs.getInt("id_producto"),rs.getString("nombre_producto"),rs.getString("tipo"),rs.getString("descripcion"),rs.getDouble("precio")));  
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return productos;
	}
	
	
	/**
	 * metodo que crea un arraylist de todos lo productos de x tipo
	 * @param String tipo
	 * @return ArayList producto
	 */
	public ArrayList<Producto>productosPorCategoria(String tipo){
		ArrayList<Producto>productos= new ArrayList<Producto>();
		String consulta="SELECT * FROM productos WHERE tipo='"+tipo+"'";
		try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        ResultSet rs = preparedStatement.executeQuery();
	        while (rs.next()) {
	            productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre_producto"),rs.getString("tipo"),rs.getString("descripcion"),rs.getDouble("precio")));  
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return productos;
	}
	
	
	
	
	
	
	
	
	/**
	 * metodo que devuelve un producto a partir de su id 
	 * @param id_producto
	 * @return Objeto Producto
	 */
	public Producto dameProducto(int id_producto){
		Producto producto= new Producto();
		String consulta="SELECT * FROM productos WHERE id_producto='"+id_producto+"'";
		try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        ResultSet rs = preparedStatement.executeQuery();
	        if (rs.next()) {
	            producto = new Producto(rs.getInt("id_producto"),rs.getString("nombre_producto"),rs.getString("tipo"),rs.getString("descripcion"),rs.getDouble("precio"));  
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return producto;
	}
	
	
	
	
	
	
	
	
	
	//DEVUELVE TODAS LAS VENTAS DE UN CLIENTE PASADO POR PARAMETRO
	
	
	
	/**
	 * metodo que devuelve todas las ventas de un cliente
	 * @param int id_cliente
	 * @return ArrayList Venta
	 */
	public ArrayList<Venta> dametodasVentas(int id_cliente) {
	    ArrayList<Venta> ventas = new ArrayList<Venta>();
	    String consulta = "SELECT * FROM ventas WHERE id_cliente = ?";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_cliente);
	        ResultSet rs = preparedStatement.executeQuery();
	        while (rs.next()) {
	            ventas.add(new Venta(rs.getInt("id_venta"), rs.getDate("fecha_hora"), rs.getInt("id_cliente"), rs.getInt("id_empleado"), rs.getDouble("precio_venta")));
	            
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return ventas;
	}
	
	
	
	//DEVUELVE TODAS LAS LINEAS DE VENTA DE UNA VENTA PASADA POR PARAMETRO
	
	/**
	 * metodo que devuelve las lineas de venta a partir de un id venta
	 * @param int id_venta
	 * @return ArrayList de lienas de venta
	 */
	public ArrayList<LineaVenta> dameLineasVenta(int id_venta) {
	    ArrayList<LineaVenta> lineasVenta = new ArrayList<LineaVenta>();
	    String consulta = "SELECT * FROM l_ventas WHERE id_venta = ?";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_venta);
	        ResultSet rs = preparedStatement.executeQuery();
	        while (rs.next()) {
	            
	            lineasVenta.add(new LineaVenta(rs.getInt("id_Lventa"),rs.getInt("id_venta"),rs.getInt("id_producto"),rs.getInt("unidades"),rs.getDouble("precio_unidad")));
	            
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return lineasVenta;
	}
	
	//DEVUELVE TODAS LAS LINEAS DE VENTA DE UN PRODUCTO PASADO POR PARAMETRO
	
	/**
	 * metodo que devuelve las lienas de venta por producto
	 * @param int id_producto
	 * @return ArrayList de lienas de venta 
	 */
	public ArrayList<LineaVenta> dameLineasVentaPorProducto(int id_producto) {
	    ArrayList<LineaVenta> lineasVenta = new ArrayList<LineaVenta>();
	    String consulta = "SELECT * FROM l_ventas WHERE id_producto = ?";
	    try {
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        preparedStatement.setInt(1, id_producto);
	        ResultSet rs = preparedStatement.executeQuery();
	        while (rs.next()) {
	            
	            lineasVenta.add(new LineaVenta(rs.getInt("id_Lventa"),rs.getInt("id_venta"),rs.getInt("id_producto"),rs.getInt("unidades"),rs.getDouble("precio_unidad")));
	            
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return lineasVenta;
	}
	
	
	//MODIFICA UN CLIENTE
	/**
	 * metodo para modificar un cliente
	 * @param int idCliente
	 * @param String dni
	 * @param nombre
	 * @param apellidos
	 * @param direccion
	 * @param cp
	 * @param provincia
	 */
	public void modificarCliente(int id_cliente,String dni,String nombre,String apellidos,String direccion,String cp,String provincia) {
		String consulta = "UPDATE clientes SET dni='" + dni + "',nombre='" + nombre
				+ "',direccion='" + direccion + "' , cp='" + cp + "' WHERE id_cliente='" + id_cliente + "' ";
		try {
	        // Preparar la sentencia SQL
			Statement myStatement=this.conexion.createStatement();
			myStatement.executeUpdate(consulta);
			
	    } catch (SQLException e) {
	       
	        e.printStackTrace();
	    }
	}
	
	/**
	 * modifica un producto 
	 * @param id_producto
	 * @param descripcion
	 * @param precio
	 */
	public void modificarProducto(int id_producto,String descripcion,double precio ) {
		String consulta = "UPDATE productos SET descripcion='" + descripcion + "',precio='" + precio
				+  "' WHERE id_producto='" + id_producto + "' ";
		try {
	        // Preparar la sentencia SQL
	        PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
	        
	        // Establecer los parámetros en la sentencia SQL
	        preparedStatement.setString(1, descripcion);
	        preparedStatement.setDouble(2, precio);
	       
	        
	      
	        preparedStatement.executeUpdate();
	        
	        
	        
	        
	        
	    } catch (SQLException e) {
	       
	        e.printStackTrace();
	    }
	}
	
	
	//OBTIENE EL ID_CLIENTE MAXIMO
	
	/**
	 * metodo que da el codifo del ultimo cliente mas uno
	 * @return int codCliente +1
	 */
	public int dameCodigoClienteMax() {
		String consulta="SELECT id_cliente FROM clientes WHERE id_cliente=(SELECT MAX(id_cliente)FROM clientes)";
		int id_cliente=0;
		 try {
			PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
			 ResultSet rs= preparedStatement.executeQuery(consulta);
			 if (rs.next()) {
				id_cliente=rs.getInt("id_cliente");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id_cliente+1;
	}
	
	
	/**
	 * metodo que da el codigo del ultimo producto mas uno
	 * @return
	 */
	public int dameCodigoProductoMax() {
		String consulta="SELECT id_producto FROM productos WHERE id_producto=(SELECT MAX(id_producto)FROM productos)";
		int id_producto=0;
		 try {
			PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
			 ResultSet rs= preparedStatement.executeQuery(consulta);
			 if (rs.next()) {
				id_producto=rs.getInt("id_producto");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id_producto+1;
	}
	
	//DEVUELVE TODOS LOS TIPOS DE PRODUCTOS
	/**
	 * devueve un arraylist de todos los tipos de producto
	 * @return ArrayList de String 
	 */
	public ArrayList<String> dameTiposProductos(){
		ArrayList<String> tipos= new ArrayList<String>();
		String consulta="SELECT DISTINCT tipo FROM productos";
		try {
			PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
			 ResultSet rs= preparedStatement.executeQuery(consulta);
			 while (rs.next()) {
				tipos.add(rs.getString("tipo"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tipos;
	}
	
	 
	/**
	 * Metodo que devuelce un arraylist con los 5 ids de producto mas vendidos
	 * @return ArrayList
	 */
	public ArrayList<Integer>dameLosIDs5ProductosMasVendidos(){
		ArrayList<Integer>id_productos= new ArrayList<Integer>();
		String consulta="SELECT id_producto, SUM(unidades) AS total_vendido FROM l_ventas GROUP BY id_producto ORDER BY total_vendido DESC LIMIT 5";
		try {
			PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
			 ResultSet rs= preparedStatement.executeQuery(consulta);
			 while (rs.next()) {
				id_productos.add(rs.getInt("id_producto"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id_productos;
	}
	
	
	/**
	 * Metodo que devuelce un arraylist con los 5 producto mas vendidos
	 * @return ArrayList
	 */
	public ArrayList<Producto>dameLos5ProductosMasVendidos(){
		ArrayList<Producto>productos= new ArrayList<Producto>();
		String consulta="SELECT id_producto, SUM(unidades) AS total_vendido FROM l_ventas GROUP BY id_producto ORDER BY total_vendido DESC LIMIT 5";
		try {
			PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
			 ResultSet rs= preparedStatement.executeQuery(consulta);
			 while (rs.next()) {
				Producto product = (dameProducto(rs.getInt("id_producto")));
				productos.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return productos;
	}
	
	/**
	 * metodo que devuelve todas las ventas
	 * @return ArrayList de ventas
	 */
	public ArrayList<Venta>dameTodasLasVentas(){
		ArrayList<Venta>ventas= new ArrayList<Venta>();
		String consulta="SELECT *  FROM ventas";
		try {
			PreparedStatement preparedStatement = this.conexion.prepareStatement(consulta);
			 ResultSet rs= preparedStatement.executeQuery(consulta);
			 while (rs.next()) {
				ventas.add(new Venta(rs.getInt("id_venta"), rs.getDate("fecha_hora"), rs.getInt("id_cliente"), rs.getInt("id_empleado"), rs.getDouble("precio_venta")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ventas;
	}
	
	/**
	 * 
	 * @param id_producto
	 * @param nombre_producto
	 * @param tipo
	 * @param descripcion
	 * @param precio
	 */
	public void modificarProducto(int id_producto,String nombre_producto,String tipo,String descripcion,double precio ) {
		String consulta = "UPDATE productos SET descripcion='" + descripcion + "',precio='" + precio
				+  "' ,nombre_producto='"+nombre_producto+"' ,tipo='"+tipo+"' WHERE id_producto='" + id_producto + "' ";
		try {
			Statement myStatement=this.conexion.createStatement();
			myStatement.executeUpdate(consulta);
 
	    } catch (SQLException e) {
	       
	        e.printStackTrace();
	    }
	}
	
	
	

	

}
