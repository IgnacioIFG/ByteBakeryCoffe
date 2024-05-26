<%@page import="PaqueteByteBakery.BDcontrollerBBC"%>
<%@page import="PaqueteByteBakery.*"%>
<%@ page import="java.util.regex.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<% 
BDcontrollerBBC controlador= new BDcontrollerBBC();

String tipoOperacion=request.getParameter("tipo");

int id_cliente=0;
String nombre="";
String apellidos="";
String dni="";
String cp="";
String direccion="";
String provincia="";

int id_producto=0;
String nombre_producto="";
String tipoProducto="";
String descripcion="";
double precio=0;
String precioProducto="";


//ALTA CLIENTE

if(tipoOperacion.equalsIgnoreCase("altacliente")){
	id_cliente=Integer.parseInt(request.getParameter("id_cliente"));
	nombre=request.getParameter("nombre");
	apellidos=request.getParameter("apellidos");
	dni=request.getParameter("dni");
	cp=request.getParameter("cp");
	direccion=request.getParameter("direccion");
	provincia=request.getParameter("provincia");
	
	if(validarTexto(nombre) && validarApellido(apellidos) && validarDireccion(direccion) && validarTexto(provincia) && validarNumeros(cp) && validarDNI(dni)){
		controlador.altaCliente(id_cliente, dni, nombre, apellidos, direccion, cp, provincia);
		response.sendRedirect("signUpCustomer.jsp?mensaje=Congratulations " + nombre+ ", You're now part of the team!!"); 
	}else{
		response.sendRedirect("signUpCustomer.jsp?mensaje=No se ha podido dar de alta");
	}
	
}

//BAJA CLIENTE

else if(tipoOperacion.equalsIgnoreCase("bajacliente")){
	id_cliente=Integer.parseInt(request.getParameter("idCliente"));
	
	Cliente client = controlador.dameCliente(id_cliente);
	
		controlador.bajaCliente(id_cliente);
		response.sendRedirect("customers.jsp?mensaje="+ client.getNombre() +" has been removed.");
	}
	

//ALTA PRODUCTO

else if(tipoOperacion.equalsIgnoreCase("addProduct")){
	id_producto=Integer.parseInt(request.getParameter("id_producto"));
	nombre_producto=request.getParameter("nombre_producto");
	tipoProducto=request.getParameter("tipoProducto");
	descripcion=request.getParameter("descripcion");
	precioProducto=request.getParameter("precio");
	
	if(validarPrecio(precioProducto) && validarTexto(nombre_producto) && validarTexto(descripcion) ){
		double precioNuevo=Double.parseDouble(precioProducto);
		controlador.altaProducto(id_producto, nombre_producto, tipoProducto, descripcion, precioNuevo);
		response.sendRedirect("addProduct.jsp?mensaje=The product \"" + nombre_producto + "\" has been added");
			
	}else{
		response.sendRedirect("addProduct.jsp?mensaje=The product \"" + nombre_producto + "\" has not been added");
	}

}

//BAJA PRODUCTO

else if(tipoOperacion.equalsIgnoreCase("deleteProduct")){
	id_producto=Integer.parseInt(request.getParameter("id_product"));
	
	Producto prod = controlador.dameProducto(id_producto);
	
	if(controlador.existeProducto(id_producto)){
		controlador.bajaProducto(id_producto);
		response.sendRedirect("deleteProduct.jsp?mensaje=The product \"" + prod.getNombre_producto() + "\" has been deleted");
	}else{
		response.sendRedirect("deleteProduct.jsp?mensaje=The product \"" + prod.getNombre_producto() + "\" has not been deleted");
	}
	
}

//MODIFICAR CLIENTE

else if(tipoOperacion.equalsIgnoreCase("modificacioncliente")){
	id_cliente=Integer.parseInt(request.getParameter("id_cliente"));
	nombre=request.getParameter("nombre");
	apellidos=request.getParameter("apellidos");
	dni=request.getParameter("dni");
	cp=request.getParameter("cp");
	direccion=request.getParameter("direccion");
	provincia=request.getParameter("provincia");
	
		if(validarTexto(nombre)&& validarDireccion(direccion) && validarDNI(dni)  && validarTexto(provincia)){
		controlador.modificarCliente(id_cliente, dni, nombre, apellidos, direccion, cp, provincia);
		response.sendRedirect("customers.jsp?mensaje=\"" + nombre + "\" has been modified.");

		}else{
			response.sendRedirect("customers.jsp?mensaje=\"" + nombre + "\" has not been modified.");
		}
		
}



//MODIFICAR PRODUCTO

else if(tipoOperacion.equalsIgnoreCase("editProductEspecific")){
	id_producto=Integer.parseInt(request.getParameter("id_producto"));
	nombre_producto=request.getParameter("nombre_producto");
	tipoProducto=request.getParameter("tipoProducto");
	descripcion=request.getParameter("descripcion");
	precioProducto=request.getParameter("precio");
	
	if(validarPrecio(precioProducto)&& validarTexto(nombre_producto) && validarTexto(descripcion)){
		double nuevoPrecio=Double.parseDouble(precioProducto);
		controlador.modificarProducto(id_producto, nombre_producto, tipoProducto, descripcion, nuevoPrecio);
		response.sendRedirect("editProduct.jsp?mensaje=Modification done");
		
	}else{
		response.sendRedirect("editProduct.jsp?mensaje=Modification dont done");
	}
			
}


%>


<%! 

 boolean validarTexto(String nombre) {
    // Comprueba si el nombre es nulo o está vacío
    if (nombre == null || nombre.trim().isEmpty()) {
        return false;
    }

    // Comprueba la longitud del nombre
    

    // Comprueba si el nombre solo contiene letras y espacios
    for (char c : nombre.toCharArray()) {
        if (!Character.isLetter(c) && !Character.isSpaceChar(c)) {
            return false;
        }
    }

    return true;
}
%>

<%!
boolean validarApellido(String apellido) {
    // Comprueba si el apellido es nulo o está vacío
    if (apellido == null || apellido.trim().isEmpty()) {
        return false;
    }

    // Comprueba si el apellido solo contiene letras y espacios
    for (char c : apellido.toCharArray()) {
        if (!Character.isLetter(c) && !Character.isSpaceChar(c) && c != '-') {
            return false;
        }
    }

    return true;
}
%>


<%! 
	boolean validarNumeros(String cadena){

        for (int i = 0; i < cadena.length(); i++) {
            char caracter = cadena.charAt(i);
            if (!Character.isDigit(caracter)) {
                return false;
            }               
        }
        return true;
            
}

%>



<%!
 boolean validarDNI(String dni) {
    // Expresión regular para validar DNI español
    String regex = "\\d{8}[A-HJ-NP-TV-Z]";
    return Pattern.matches(regex, dni);
}


%>



<%!
boolean validarPrecio(String precio){



String regex = "^\\d+(\\.\\d+)?$";

// Compila la expresión regular en un patrón
Pattern pattern = Pattern.compile(regex);

// Crea un objeto Matcher para la cadena de texto introducida
Matcher matcher = pattern.matcher(precio);

// Comprueba si la cadena de texto coincide con la expresión regular
if (matcher.matches()) {
    return true;
} else {
   return false;
}
}

%>


<%! 
boolean validarDireccion(String direccion) {
    // Comprobar si la dirección está vacía
    if (direccion == null || direccion.trim().isEmpty()) {
        return false;
    }

    // Comprobar si la dirección tiene más de un carácter especial
    int countSpecialChars = 0;
    for (char c : direccion.toCharArray()) {
        if (!Character.isLetterOrDigit(c) && !Character.isSpaceChar(c)) {
            countSpecialChars++;
            if (countSpecialChars > 1) {
                return false;
            }
        }
    }

    return true;
}


%>







<body>

</body>
</html>