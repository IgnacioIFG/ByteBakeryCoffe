package PaqueteByteBakery;

public class Cliente {

    private int idCliente;
    private String dni;
    private String nombre;
    private String apellidos;
    private String direccion;
    private String cp;
    private String provincia;
    
    
    /**
     * constructor cliente vacio
     */
    public Cliente() {
		
	}

    /**
     * Constructor de Cliente con todos los atributos
     * @param idCliente
     * @param dni
     * @param nombre
     * @param apellidos
     * @param direccion
     * @param cp
     * @param provincia
     */
    public Cliente(int idCliente, String dni, String nombre, String apellidos, String direccion, String cp, String provincia) {
        this.idCliente = idCliente;
        this.dni = dni;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.cp = cp;
        this.provincia = provincia;
    }
    
    

	// Getters y Setters
    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCp() {
        return cp;
    }

    public void setCp(String cp) {
        this.cp = cp;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
	
}
