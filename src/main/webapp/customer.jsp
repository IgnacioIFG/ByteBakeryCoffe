<%@page import="PaqueteByteBakery.Venta"%>
<%@page import="PaqueteByteBakery.LineaVenta"%>
<%@page import="PaqueteByteBakery.Cliente"%>
<%@page import="PaqueteByteBakery.BDcontrollerBBC"%>
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
    
table {
    width: 100%;
    border-collapse: collapse; /* Esto es importante para que los bordes colapsen correctamente */
    font-family: Arial, sans-serif;
    background-color: #f8dfb7;
}

td, th {
    padding: 5px;
    text-align: left;
    border: 1px solid #141211; 
}

th {
    background-color: #da9f5b; /* Color de fondo para los encabezados de la tabla */
}



table tr:hover {
        background-color: #d38d3c; /* Cambia el color de fondo al hacer hover */
    }

    /* Estilo para las celdas de la tabla al hacer hover */
    table tr:hover td {
        color: #fafafa; /* Cambia el color del texto al hacer hover */
    }




.tablaEntera{
    box-shadow: 0 0 10px 3px;
    /*box-shadow: 2px 2px 2px;*/
    background-color: #f8dfb7;
}

.contenedor_tablas_detalle {
    text-align: center;
}



.coffee-shop-button {
    background-color: #6f4e37; /* Color café oscuro */
    color: #ffffff; /* Texto blanco */
    border: 2px solid #3e2723; /* Borde más oscuro */
    border-radius: 8px; /* Bordes redondeados */
    padding: 10px 20px; /* Relleno del botón */
    font-size: 16px; /* Tamaño del texto */
    font-weight: bold; /* Texto en negrita */
    font-family: 'Montserrat', sans-serif; /* Fuente */
    cursor: pointer; /* Cursor de puntero al pasar sobre el botón */
    transition: background-color 0.3s, transform 0.3s; /* Transiciones suaves */

}

.coffee-shop-button:hover {
    background-color: #3e2723; /* Color más oscuro al pasar el cursor */
    transform: scale(1.02); /* Agrandar un poco el botón al pasar el cursor */
}

.coffee-shop-button:active {
    background-color: #2c1b18; /* Color aún más oscuro al hacer clic */
    transform:
}


.card-style1 {
    box-shadow: 0px 0px 10px 0px rgb(89 75 128 / 9%);
}
.border-0 {
    border: 0!important;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: 0.25rem;
}

section {
    padding: 120px 0;
    overflow: hidden;
    background: #fff;
}
.mb-2-3, .my-2-3 {
    margin-bottom: 2.3rem;
}

.section-title {
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 10px;
    position: relative;
    display: inline-block;
    clear:both;
}
.text-primary {
    color: #FFFBF1 !important;
}
.text-secondary {
    color: #DA9F5B !important;
}
.font-weight-600 {
    font-weight: 600;
}
.display-26 {
    font-size: 1.3rem;
}

@media screen and (min-width: 992px){
    .p-lg-7 {
        padding: 4rem;
    }
}
@media screen and (min-width: 768px){
    .p-md-6 {
        padding: 3.5rem;
    }
}
@media screen and (min-width: 576px){
    .p-sm-2-3 {
        padding: 2.3rem;
    }
}
.p-1-9 {
    padding: 1.9rem;
}

.bg-secondary {
    background: #D38D3C !important;
}
@media screen and (min-width: 576px){
    .pe-sm-6, .px-sm-6 {
        padding-right: 3.5rem;
    }
}
@media screen and (min-width: 576px){
    .ps-sm-6, .px-sm-6 {
        padding-left: 3.5rem;
    }
}
.pe-1-9, .px-1-9 {
    padding-right: 1.9rem;
}
.ps-1-9, .px-1-9 {
    padding-left: 1.9rem;
}
.pb-1-9, .py-1-9 {
    padding-bottom: 1.9rem;
}
.pt-1-9, .py-1-9 {
    padding-top: 1.9rem;
}
.mb-1-9, .my-1-9 {
    margin-bottom: 1.9rem;
}
@media (min-width: 992px){
    .d-lg-inline-block {
        display: inline-block!important;
    }
}
.rounded {
    border-radius: 0.25rem!important;
}


.img-contenedor {
        max-width: 70%; /* Cambia el valor según el tamaño deseado */
        float: left; /* Para que el texto flote alrededor de la imagen */
        margin-right: 20px; /* Ajusta el margen derecho para separar el texto de la imagen */
        margin-left: 20px; /* Ajusta el margen derecho para separar el texto de la imagen */
        
    }

</style>


<%
	BDcontrollerBBC bd = new BDcontrollerBBC();
		//int idCliente = request.getParameter("idcliente");
	int idCliente=Integer.parseInt(request.getParameter("idcliente"));
	Cliente client = bd.dameCliente(idCliente);
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
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 100px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase"></h1>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- producto  -->
      <section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div class="card card-style1 border-0">
                    <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                        <div class="row align-items-center">
                            <div class="col-lg-6 mb-4 mb-lg-0">
                                <img src="img/Clients/<%=client.getIdCliente() %>.png" alt="..." class="img-contenedor">
                            </div>
                            <div class="col-lg-6 px-xl-10">
                                <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded">
                                    <h3 class="h2 text-white mb-0"><%=client.getNombre() %> <%=client.getApellidos() %></h3>
                                    
                                </div>
                                <ul class="list-unstyled mb-1-9">
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">ID Client:</span> <%=client.getIdCliente() %></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">ID:</span> <%=client.getDni() %></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Address:</span> <%=client.getDireccion() %></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Postal Code:</span> <%=client.getCp() %></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Province:</span> <%=client.getProvincia() %></li>
                                    
                                    
                                </ul>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            </div>
        </div>
    
</section>





    
    
    	<h4 style="letter-spacing: 5px; text-align:center; color:#E6AC5A; font-family:'Roboto', sans-serif; " >Sales</h4>




    <div class="contenedor_tablas_detalle">
		<% for(Venta v: bd.dametodasVentas(idCliente)) { 
		 ArrayList<LineaVenta> lv = bd.dameLineasVenta(v.getIdVenta());
		
		    // Comprobar si hay líneas de venta
		   if (lv != null && !lv.isEmpty()) {%>
		<table>
		    <tr>
		        <th >ID Sale</th>
		        <th >Date Time</th>
		        <th >ID Client</th>
		        <th >ID Employee</th>
		        <th >Price Sale</th>
		        <th >Action</th>
		    </tr>
		    <tr>
		        <td><%=v.getIdVenta()%></td>
		        <td><%=v.getFechaHora()%></td>
		        <td><%=v.getIdCliente() %></td>
		        <td><%=v.getIdEmpleado() %></td>
		        <td><%= v.getPrecioVenta() %></td>
		        <td><button class="coffee-shop-button" onclick="toggleTable('<%=v.getIdVenta()%>')">View Details</button></td>
		    </tr>
		</table>
		<table  id="table_<%=v.getIdVenta()%>" style="display: none;">
		    <tr>
		        <th >ID Sales Line</th>
		         <th >ID Sale</th>
		        <th >ID Product</th>
		        <th >Units</th>
		        <th >Unit Price</th>
		    </tr>
		    	<% for(LineaVenta l: bd.dameLineasVenta(v.getIdVenta())) { %>
			    <tr>
			        <td><%=l.getIdLventa()%></td>
			        <td><%=l.getIdVenta()%></td>
			        <td><%=l.getIdProducto()%></td>
			        <td><%=l.getUnidades() %></td>
			        <td><%=l.getPrecioUnidad() %></td>
			    </tr>
		   	  	<% } %>
		</table>
			<% } %>
		<% } %>
    </div>
    
    <!-- producto end -->
<script>
function toggleTable(tableId) {
    var table = document.getElementById('table_' + tableId);
    if (table.style.display === 'none') {
        table.style.display = 'table';
    } else {
        table.style.display = 'none';
    }
}
</script>
   


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

