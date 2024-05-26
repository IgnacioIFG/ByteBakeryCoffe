package PaqueteByteBakery;

import java.util.Date;

public class Venta {
	
	private int idVenta;
    private Date fechaHora;
    private int idCliente;
    private int idEmpleado;
    private double precioVenta;
 
    /**
     * constructor vacio de venta
     */
    public Venta() {
		super();
	}

    /**
     * Constructor Venta con todos los atributos
     * @param idVenta
     * @param fechaHora
     * @param idCliente
     * @param idEmpleado
     * @param precioVenta
     */
	public Venta(int idVenta, Date fechaHora, int idCliente, int idEmpleado, double precioVenta) {
		super();
		this.idVenta = idVenta;
		this.fechaHora = fechaHora;
		this.idCliente = idCliente;
		this.idEmpleado = idEmpleado;
		this.precioVenta = precioVenta;
	}


	// Getters y Setters
    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public Date getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(Date fechaHora) {
        this.fechaHora = fechaHora;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public double getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(double precioVenta) {
        this.precioVenta = precioVenta;
    }

	@Override
	public String toString() {
		return "Venta [idVenta=" + idVenta + ", fechaHora=" + fechaHora + ", idCliente=" + idCliente + ", idEmpleado="
				+ idEmpleado + ", precioVenta=" + precioVenta + "]";
	}
}
