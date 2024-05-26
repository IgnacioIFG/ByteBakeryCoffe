package PaqueteByteBakery;

public class Producto {
    private int idProducto;
    String nombre_producto;
    String tipo;
    private String descripcion;
    private double precio;
    
   /**
    * constructor vacio de Producto
    */
    public Producto() {
		super();
	}
    /**
     * constructor con todos los parametros de Producto
     * @param idProducto
     * @param nombre_producto
     * @param tipo
     * @param descripcion
     * @param precio
     */
    public Producto(int idProducto, String nombre_producto, String tipo, String descripcion, double precio) {
		super();
		this.idProducto = idProducto;
		this.nombre_producto = nombre_producto;
		this.tipo = tipo;
		this.descripcion = descripcion;
		this.precio = precio;
	}
    
    
    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }
    public void setPrecio(double precio) {
        this.precio = precio;
    }

	public String getNombre_producto() {
		return nombre_producto;
	}

	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
    
}


