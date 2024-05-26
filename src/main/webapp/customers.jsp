<%@page import="PaqueteByteBakery.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Byte Bakery Coffee</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free Website Template" name="keywords">
    <meta content="Free Website Template" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.min.css" rel="stylesheet">
</head>

<style>

.editarEliminar{
	display: flex;
	flex-direction: row;
	justify-content: space-around;
}

.editar{
border-radius: 5px;
padding: 0.6em;
background: #f7af5d;
}



.img-editar{
  width: 45px;
  height: 45px;
  background-image: url("./img/editarUser.png");
  background-size: 80%;
  background-repeat: no-repeat; /* Evita que la imagen se repita */
  background-position: center;
  transition: background-image 0.3s ease-in-out;
}

.img-editar:hover{
  width: 45px;
  height: 45px;
  background-image: url("./img/lapiz.png");
  background-size: 80%;
  background-repeat: no-repeat; /* Evita que la imagen se repita */
  background-position: center;
  transition: background-image 0.3s ease-in-out;
}

.eliminar{
border-radius: 5px;
padding: 0.6em;
background: #f7af5d;
}

.img-eliminar{
  width: 45px;
  height: 45px;
  background-image: url("./img/eliminar.png");
  background-size: 70%;
  background-repeat: no-repeat; /* Evita que la imagen se repita */
  background-position: center;
  transition: background-image 0.3s ease-in-out;
}

.img-eliminar:hover{
  background-size: 70%;
  background-image: url("./img/eliminando.png");

}

.hidden-text {
    text-indent: -9999px;
    overflow: hidden;
    white-space: nowrap;
    display: inline-block;
    width: 100%;
    height: 100%;
}

    .contenedor_tablas_detalle{
        margin: 0 auto;
        padding: 2rem;
    }

    .row.align-items-center .col-4 img:hover {
        opacity: 0.8; /* Opacidad al pasar el cursor */
        filter: brightness(60%); /* Oscurecimiento al pasar el cursor */
        border-radius: 0.5px;
    }
    .col-8.col-sm-9 h4:hover {
    text-decoration: underline;
    
    }
    
    /*aqui*/
table {
    width: 100%;
    border-collapse: collapse; /* Esto es importante para que los bordes colapsen correctamente */
    font-family: Arial, sans-serif;
    background-color: #edba7fc5
}

td, th {
    padding: 5px;
    text-align: left;
    border: 1px solid #141211; 
}

td{
    font-size: 1.2rem;
}

th {
    background-color: #da9f5b; /* Color de fondo para los encabezados de la tabla */
    width:6em;
}



table tr:hover {
        background-color: #edba7fc5; /* Cambia el color de fondo al hacer hover */
    }

    /* Estilo para las celdas de la tabla al hacer hover */
   table tr:hover td {
        color: #404040; /* Cambia el color del texto al hacer hover */
        
    }


.tablaEntera{
    box-shadow: 0 0 10px 3px;
    /*box-shadow: 2px 2px 2px;*/
    background-color: #f8dfb7;
}

.contenedor_tablas_detalle {
    text-align: center;
}

    </style>

  <%
	BDcontrollerBBC bd= new BDcontrollerBBC(); // Creación de un nuevo objeto controlador de la clase BDController
	String mensaje=""; // Inicialización de la variable mensaje
	int id_cliente=0; // Inicialización de la variable id_cliente
	
	if(request.getParameter("idCliente")!=null){
	    id_cliente=Integer.parseInt(request.getParameter("idCliente")); // Si el parámetro 'idCliente' no es nulo, se convierte a entero y se asigna a la variable idCliente
	}
	
	if(request.getParameter("mensaje")!=null){
	    mensaje=request.getParameter("mensaje"); // Si el parámetro 'mensaje' no es nulo, se asigna a la variable mensaje
	}
	
	Cliente customer = new Cliente(); // Creación de un nuevo objeto cliente de la clase Cliente
	customer=bd.dameCliente(id_cliente); // Asignación del cliente obtenido del controlador a la variable cliente
%>
<body>
       <!-- Navbar Start -->
   <div class="container-fluid p-0 nav-bar">
    <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
        <a href="index.jsp" class="navbar-brand px-lg-4 m-0">
            <h1 class="m-0 display-4 text-uppercase text-white">Byte Bakery Coffe</h1>
        </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
          <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto p-4">
                    <a href="index.jsp" class="nav-item nav-link">Home</a>
                    <a href="about.jsp" class="nav-item nav-link">About</a>
                    <a href="customers.jsp" class="nav-item nav-link active">Customers</a>
                    <a href="products.jsp" class="nav-item nav-link">Products</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Login</a>
                        <div class="dropdown-menu text-capitalize">
                            <a href="signUpCustomer.jsp" class="dropdown-item">Sign Up</a>
                            <a href="customers.jsp" class="dropdown-item">Sign In</a>
                        </div>
                    </div>
                 	<div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Bag</a>
	                        <div class="dropdown-menu text-capitalize">
	                        <a href="sales.jsp" class="dropdown-item">Sales list</a>
	                            <a href="editProduct.jsp" class="dropdown-item">Edit Product</a>
	                            <a href="addProduct.jsp" class="dropdown-item">Add Product</a>
	                            <a href="deleteProduct.jsp" class="dropdown-item">Delete Product</a>
	                        </div>
                 </div>
                 <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
           </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 300px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white"></h1>
            <p style="font-size: 1.8em;" class="m-0 text-white"><%=mensaje%></p>
            <div class="d-inline-flex mb-lg-5">
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Menu Start -->
   <div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;"></h4>
            <h1 class="display-4">Customers List</h1>
        </div>
        <div class="contenedor_tablas_detalle">

      
      <table>
    <tr>
        <th >Foto</th>
        <th >Id Cliente</th>
        <th >Nombre</th>
        <th >Apellidos</th>
        <th >Direccion</th>
        <th >Codigo Postal</th>
        <th >Provincia</th>
        <th >Modificar</th>
    </tr>
      
<% for(Cliente cliente : bd.todosClientes()) { %>

    <tr>
    	<td>
	    	<a href="customer.jsp?idcliente=<%=cliente.getIdCliente()%>"> 
	    		<img src="img/Clients/<%=cliente.getIdCliente()%>.png" width="70px" height="70px" style="border-radius: 15px; box-shadow: 10px;">	
	    	</a>
    	</td>
        <td><%=cliente.getIdCliente()%></td>
        <td><%=cliente.getNombre()%></td>
        <td><%=cliente.getApellidos() %></td>
        <td><%=cliente.getDireccion() %></td>
        <td><%= cliente.getCp() %></td>
        <td><%= cliente.getProvincia() %></td>
        <td>
        	<div class="editarEliminar">
        		<div class="editar img-editar">
        			<a href="modifyCustomer.jsp?idCliente=<%=cliente.getIdCliente()%>" class="hidden-text">edit</a>   		
        		</div>
	    	    <div class="eliminar img-eliminar">
        			<a href="operaciones.jsp?idCliente=<%=cliente.getIdCliente()%>&tipo=bajacliente" class="hidden-text">delete</a>   		
        		</div>
        	</div>
        </td>
    </tr>
    <% } %>
</table>

	</div>
</div>
    <!-- Menu End -->


     <!-- Footer Start -->
    <div class="container-fluid footer text-white mt-5 pt-5 px-0 position-relative overlay-top">
        <div class="row mx-0 pt-5 px-sm-3 px-lg-5 mt-4">
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Get In Touch</h4>
                <p><i class="fa fa-map-marker-alt mr-2"></i>C/ de Donoso Cortés, 61, Madrid</p>
                <p><i class="fa fa-phone-alt mr-2"></i>646 26 58 52</p>
                <p class="m-0"><i class="fa fa-envelope mr-2"></i>info@centronelson.org</p>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Follow Us</h4>
                
                <div class="d-flex justify-content-start">
                    <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-lg btn-outline-light btn-lg-square" href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Open Hours</h4>
                <div>
                    <h6 class="text-white text-uppercase">Monday - Friday</h6>
                    <p>8.00 AM - 8.00 PM</p>
                    <h6 class="text-white text-uppercase">Saturday - Sunday</h6>
                    <p>2.00 PM - 8.00 PM</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Newsletter</h4>
                 <p>Discover our latest limited edition coffee: Aromatic Coffee! An exquisite blend with notes of cocoa and hazelnut. Come and try it today!</p>
               
                <div class="w-100">
                    <div class="input-group">
                        <input type="text" class="form-control border-light" style="padding: 25px;" placeholder="Your Email">
                        <div class="input-group-append">
                            <button class="btn btn-primary font-weight-bold px-3">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid text-center text-white border-top mt-4 py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
            <p class="mb-2 text-white">Copyright &copy; <a class="font-weight-bold" href="#">ByteBakeryCoffee</a>. All Rights Reserved.</a></p>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
