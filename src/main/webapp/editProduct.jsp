<%@page import="PaqueteByteBakery.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Byte Bakery Coffee</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free Website Template" name="keywords">
    <meta content="Free Website Template" name="description">

    <!-- Favicon -->
    <link href="img/logoNoFondo.png" rel="icon">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=STIX+Two+Text:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
    

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.min.css" rel="stylesheet">
</head>

  
    <style>
    
    
    
    
    
  .dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown-content img {
  max-width: 30px;
  height: auto;
  margin-right: 10px;
}

.player-link {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: black;
  padding: 8px 0;
}

.button-container {
  display: inline-block;
  margin-left: 20px; /* Puedes ajustar este valor según sea necesario */
  vertical-align: top;
}


.dropdown-content {
  z-index: 1000; /* Asegúrate de que el z-index sea lo suficientemente alto para que el menú esté por encima de otros elementos */
  /* El resto de tus estilos */
}

    </style>
    
    <%
	BDcontrollerBBC db = new BDcontrollerBBC();
    ArrayList<Producto>products = db.todosProductos();
    String mensaje="";
    
    if(request.getParameter("mensaje")!=null){
    	mensaje = request.getParameter("mensaje");
    }


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
                    <a href="customers.jsp" class="nav-item nav-link">Customers</a>
                    <a href="products.jsp" class="nav-item nav-link">Products</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Login</a>
                        <div class="dropdown-menu text-capitalize">
                            <a href="signUpCustomer.jsp" class="dropdown-item">Sign Up</a>
                            <a href="customers.jsp" class="dropdown-item">Sign In</a>
                        </div>
                    </div>
                 	<div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Bag</a>
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
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white">What are you going to Edit?</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href=""></a></p>
                 <p class="display-4 m-0 text-white px-2"><%=mensaje%></p>
                <p class="m-0 text-white"></p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- edit Start -->
    <div class="offer container-fluid my-5 py-5 text-center position-relative overlay-top overlay-bottom">
        <div class="container py-5">
            <div class="col-lg-6 mx-auto form-container"> <!-- Clase específica para centrar el formulario -->
		        <div class="text-center p-5" style="background: rgba(51, 33, 29, .8);">
		            <h1 class="text-white mb-4 mt-5">Select Product</h1>
		            <!-- Formulario de baja de producto -->	
		           <form id="bajaClienteForm" action="editProductEspecific.jsp?tipo=editProduct" method="post">
					    <div class="dropdown btn btn-primary py-3">
					    <!-- desplegable para seleccionar producto-->
					    	<div class="">
					    		<select name="id_product" id="id_product" placeholder="Select the product">
					    			<%for(int i=0; i<products.size(); i++){ %>
					    				<option value="<%=products.get(i).getIdProducto()%>">		    					
					    				<%=products.get(i).getNombre_producto() %>
					    				</option> 
					    			<%} %>
					    		</select>				 				    	
					    	</div>
					    </div>
					    <div class="button-container">
					        <input type="hidden" name="id_producto" id="clienteSeleccionado">
					        <button class="btn btn-primary btn-block font-weight-bold py-3" type="submit" >Edit</button>
					    </div>
					</form>
             	</div>
          	</div>
        </div>
    </div>
    <!-- edit End -->
    
    


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
    

    <!-- Template Javascript -->
    
    <script src="js/main.js"></script>
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>
    <script>
    $(document).ready(function () {
    	  // Cargar lista de clientes al hacer clic en el botón
    	  $('.dropbtn').on('click', function() {
    	    $('.dropdown-content').empty(); // Limpiar la lista antes de cargar los productos
    	    // Simular lista de productos (debes reemplazar esto con tu propia lógica de datos)
    	    var clientes = [
    	      { id: 1, nombre: 'Cliente 1', imagen: 'cliente1.jpg' },
    	      { id: 2, nombre: 'Cliente 2', imagen: 'cliente2.jpg' },
    	      { id: 3, nombre: 'Cliente 3', imagen: 'cliente3.jpg' }
    	    ];
    	    // Generar elementos de lista para cada producto y agregarlos al menú desplegable
    	    clientes.forEach(function(cliente) {
    	      var clienteElement = $('<a href="#" class="player-link"></a>');
    	      clienteElement.append('<img src="img/clients/' + cliente.imagen + '">');
    	      clienteElement.append(cliente.nombre);
    	      clienteElement.append('<input type="hidden" name="id_cliente" value="' + cliente.id + '">');
    	      $('.dropdown-content').append(clienteElement);
    	    });
    	  });
    	});

    function selectProducto(idProducto) {
        document.getElementById('clienteSeleccionado').value = idProducto;
      }
    
    </script>

</body>
</html>