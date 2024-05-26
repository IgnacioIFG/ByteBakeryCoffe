package PaqueteByteBakery;

public class LineaVenta {
	 private int idLventa;
	    private int idVenta;
	    private int idProducto;
	    private int unidades;
	    private double precioUnidad;
	    
	    /**
	     * constructor lventas vacio
	     */
	    public LineaVenta() {
			super();
		}
	    
	    /**
	     * cosntructor lVentas con todos los atributos
	     * @param idLventa
	     * @param idVenta
	     * @param idProducto
	     * @param unidades
	     * @param precioUnidad
	     */
	    public LineaVenta(int idLventa, int idVenta, int idProducto, int unidades, double precioUnidad) {
	        this.idLventa = idLventa;
	        this.idVenta = idVenta;
	        this.idProducto = idProducto;
	        this.unidades = unidades;
	        this.precioUnidad = precioUnidad;
	    }
	    
		// Getters y Setters
	    public int getIdLventa() {
	        return idLventa;
	    }

	    public void setIdLventa(int idLventa) {
	        this.idLventa = idLventa;
	    }

	    public int getIdVenta() {
	        return idVenta;
	    }

	    public void setIdVenta(int idVenta) {
	        this.idVenta = idVenta;
	    }

	    public int getIdProducto() {
	        return idProducto;
	    }

	    public void setIdProducto(int idProducto) {
	        this.idProducto = idProducto;
	    }

	    public int getUnidades() {
	        return unidades;
	    }

	    public void setUnidades(int unidades) {
	        this.unidades = unidades;
	    }

	    public double getPrecioUnidad() {
	        return precioUnidad;
	    }

	    public void setPrecioUnidad(double precioUnidad) {
	        this.precioUnidad = precioUnidad;
	    }



		@Override
		public String toString() {
			return "LineaVenta [idLventa=" + idLventa + ", idVenta=" + idVenta + ", idProducto=" + idProducto
					+ ", unidades=" + unidades + ", precioUnidad=" + precioUnidad + "]";
		}
	}




