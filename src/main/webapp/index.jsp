<%@page import="PaqueteByteBakery.BDcontrollerBBC"%>
<%@page import="PaqueteByteBakery.*"%>
<%@page import="java.util.ArrayList"%>
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
      <link rel="stylesheet" href="css/carru.css">
    
    <!-- Libraries Carrousel products -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="csscarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="csscarousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
    <link rel="stylesheet" href="csscarousel/style.css">
    
    
</head>

<%
	BDcontrollerBBC bd = new BDcontrollerBBC();

	Producto product = new Producto();

%>

<style>

.dataProdMes {

}

.logoClass{
  width: 150px;
  height: 150px;
  overflow: hidden;
}
.logoClass img{
  width: 100%;
  height: auto;
  display: block;
}

.navbar{
    
}
</style>


<body>
    <!-- Navbar Start -->
    <div class="container-fluid p-0 nav-bar">
        <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
            <a href="index.jsp" class="logoClass">
               <img src="img/logoNoFondo.png" alt="" >
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto p-4">
                    <a href="index.jsp" class="nav-item nav-link active">Home</a>
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

    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5">
        <div id="blog-carousel" class="carousel slide overlay-bottom" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/freshCoffeeBeanOverhead2.png" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <h2 class="text-primary font-weight-medium m-0"></h2>
                        <h1 class="display-1 text-white m-0">Byte Bakery Coffee</h1>
                        <h2 class="text-white m-0">* SINCE 1950 *</h2>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/freshCoffeBeanCup2.png" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <h2 class="text-primary font-weight-medium m-0">We Have Been Serving</h2>
                        <h1 class="display-1 text-white m-0">Coffee</h1>
                        <h2 class="text-white m-0">* SINCE 1950 *</h2>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/croissantChocoCarruselE.png" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <h2 class="text-primary font-weight-medium m-0">We Have Been Serving</h2>
                        <h1 class="display-1 text-white m-0">Croissant</h1>
                        <h2 class="text-white m-0">* SINCE EVER *</h2>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#blog-carousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#blog-carousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">About Us</h4>
                <h1 class="display-4">Serving Since 1950</h1>
            </div>
            <div class="row">
                <div class="col-lg-4 py-0 py-lg-5">
                    <h1 class="mb-3">Our Story</h1>
                    <h5 class="mb-3">Eos kasd eos dolor vero vero, lorem stet diam rebum. Ipsum amet sed vero dolor sea</h5>
                    <p>As we grew, so did our commitment to quality and sustainability. We forged partnerships with local farmers and suppliers who shared our values, ensuring that every bean we roasted was ethically sourced and of the highest quality.</p>
                    <a href="" class="btn btn-secondary font-weight-bold py-2 px-4 mt-2">Learn More</a>
                </div>
                <div class="col-lg-4 py-5 py-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-relative w-100 h-100" src="img/beanyMan3-removebg-preview.png" style="object-fit: contain;">
                    </div>
                </div>
                <div class="col-lg-4 py-0 py-lg-5">
                    <h1 class="mb-3">Our Vision</h1>
                    <p>We strive to offer not only the finest coffee but also a welcoming atmosphere where you can relax, connect with others, and find inspiration. </p>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Rise to the highest known quality</h5>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Obtener una puntuacion de 10</h5>
                    <h5 class="mb-3"><i class="fa fa-check text-primary mr-3"></i>Make the exceptional coffee</h5>
                    <a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- Style imagenes productos -->
    <style>

        /* Opacidad y oscurecimiento al pasar el cursor */
        .container-fluid.pt-5 .row .col-lg-6 .row.align-items-center .col-sm-5 img {
        transition: opacity 0.3s ease-in-out, filter 0.3s ease-in-out;
        }

        .container-fluid.pt-5 .row .col-lg-6 .row.align-items-center .col-sm-5 img:hover {
        opacity: 0.8; /* Opacidad al pasar el cursor */
        filter: brightness(60%); /* Oscurecimiento al pasar el cursor */
        border-radius: 0.5px;
        }
    </style>

    <!-- Service Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Our Services</h4>
                <a href="products.jsp" rel="noopener noreferrer">
                    <h1 class="display-4">Our products</h1>
                </a>
                
            </div>
            <div class="row">
            <!-- Capsulas -->
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <a href="productsFamily.jsp?familia=Coffee capsules" rel="noopener noreferrer">
                                <img style="border-radius: 10px; border: 3px solid;" class="img-fluid mb-3 mb-sm-0" src="img/service-1.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-sm-7">
                            <a href="productsFamily.jsp?familia=Coffee capsules" rel="noopener noreferrer">
                                <h4><i class="fa fa-truck service-icon"></i>Coffee capsules</h4>
                            </a>
                            <p class="m-0">
                            Our coffee capsules are more than just a convenient way to enjoy coffee; 
                            they are a testament to our passion for excellence. 
                            Every sip is a journey through the rich landscapes. 
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Granos de cafe -->
                <div class="col-lg-6 mb-5">

                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <a href="productsFamily.jsp?familia=Coffee beans" rel="noopener noreferrer">
                                <img style="border-radius: 10px; border: 3px solid;" style="border-radius: 10px; border: 3px solid;" class="img-fluid mb-3 mb-sm-0" src="img/service-2.jpg" alt="">
                            </a>
                            
                        </div>
                        
                        <div class="col-sm-7">
                            <a href="productsFamily.jsp?familia=Coffee beans" rel="noopener noreferrer">
                                <h4><i class="fa fa-coffee service-icon"></i>Fresh Coffee Beans</h4>
                            </a>
                            
                            <p class="m-0">
                            Elevate your coffee routine with Byte Bakery Coffee Beans. 
                            Grind fresh for each brew and savor the exceptional taste 
                            and aroma that only 
                            high-quality coffee beans can deliver.
                            
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Cafes calientes -->
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <a href="productsFamily.jsp?familia=Hot coffee" rel="noopener noreferrer">
                                <img style="border-radius: 10px; border: 3px solid;" class="img-fluid mb-3 mb-sm-0" src="img/service-3.jpg" alt="">
                            </a>
                            
                        </div>
                        <div class="col-sm-7"> 
                            <a href="productsFamily.jsp?familia=Hot coffee" rel="noopener noreferrer">
                                <h4><i class="fa fa-award service-icon"></i>Hot Coffee</h4>
                            </a>   
                            <p class="m-0">
                            	At Byte Bakery Coffee, we believe in making exceptional coffee accessible and convenient.
                            	combining ease of use with superior quality.
                            
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Bakery -->
                <div class="col-lg-6 mb-5">
                    <div class="row align-items-center">
                        <div class="col-sm-5">
                            <a href="productsFamily.jsp?familia=Pastry" rel="noopener noreferrer">
                                <img style="border-radius: 10px; border: 3px solid;" class="img-fluid mb-3 mb-sm-0" src="img/service-4.jpg" alt="">
                            </a>
                            
                        </div>
                        <div class="col-sm-7">
                            <a href="productsFamily.jsp?familia=Pastry" rel="noopener noreferrer">
                                <h4><i class="fa fa-table service-icon"></i>Bakery Place</h4>
                            </a>
                            
                            <p class="m-0">Treat yourself to the delightful experience of Byte Bakery Pastries. Whether you're enjoying
                             a quiet morning at home or hosting a gathering.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->
    
    
        <!-- carrusel 5 productos-->
    
           <div class="section-title">
               <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Our Top 5 Brew & Bites!</h4> 
                <h1 class="display-4">Get one?</h1>   
           </div>
           
    <div class="carousel2">
        <div class="carousel2-inner">
        
        <%for(Producto prod: bd.dameLos5ProductosMasVendidos()){ %>
            <div class="carousel2-item">
                <div class="shell">
                    <div class="wsk-cp-product">
                      <div class="wsk-cp-img">
                      <a href="product.jsp?idProducto=<%=prod.getIdProducto()%>">
                      	<img src="img/products/<%=prod.getIdProducto()%>.png" class="img-responsive" alt="Product Image">
                      </a></div>
                      <div class="wsk-cp-text">
                        <div class="category">
                        <span><%=prod.getNombre_producto()%></span>                    
                        </div>
                        <div class="title-product">
                          <h3><%=prod.getTipo()%></h3>
                        </div>
                        <div class="description-prod">
                          <p><%=prod.getDescripcion()%></p>
                        </div>
                      </div>
                      <div class="card-footer" style="background: #da9f5b; border: 2px solid #aa702e">
                        <div style="margin-left: 20px; margin-right: 20px;" class="price"><%=prod.getPrecio()%> $</div>
                        <a href="product.jsp?idProducto=<%=prod.getIdProducto()%>" class="buy-btn" style="margin-left: 20px; margin-right: 20px; margin-bottom: 10px; background: #f7bf80;" >
                        	<img src="img/cesta.png" class="img-responsive" alt="Product Image" width="22px">
                        </a>
                      </div>
                    </div>
                </div>
            </div>
            
            <%} %>
            
  
        </div> 
        <button class="carousel2-control prev" onclick="prevSlide()">&#10094;</button>
        <button class="carousel2-control next" onclick="nextSlide()">&#10095;</button>
    </div>

     <!-- carrusel productos-->
    

    <!-- Menu Start -->
<div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Menu & Pricing</h4>
                <h1 class="display-4">Competitive Pricing</h1>
            </div>
            <div class="row">
                <div class="col-lg-6">
                <a href="productsFamily.jsp?familia=Hot coffee" rel="noopener noreferrer">
                     <h1 class="mb-5">Hot Coffee</h1>
                 </a>
		             <%ArrayList<Producto> prod1 = bd.productosPorCategoria("Hot Coffee");
		                 	
		                 for(int i=0; i<(prod1.size()-5); i++){ %>
		                	 <div class="row align-items-center mb-5">
		                        <div class="col-4 col-sm-3">
		                            <a href="product.jsp?idProducto=<%=prod1.get(i).getIdProducto()%>" class m="navbar-brand px-lg-4 m-0">
		                                <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/products/<%=prod1.get(i).getIdProducto()%>.png" alt="">
		                            	<h5 class="menu-price">$<%=prod1.get(i).getPrecio()%></h5>
		                            </a>
		                            
		                            
		                        </div>
		                        <div class="col-8 col-sm-9">
		                            <a href="product.jsp?idProducto=<%=prod1.get(i).getIdProducto()%>" class m ="navbar-brand px-lg-4 m-0">
		                                <h4><%=prod1.get(i).getNombre_producto()%></h4>
		                            </a>
		                            <p class="m-0"><%=prod1.get(i).getDescripcion() %></p>
		                        </div>
		                    </div>      	 
		                 <%}%>
                </div>
                
                <div class="col-lg-6">
                <a href="productsFamily.jsp?familia=Coffee beans" rel="noopener noreferrer">
                     <h1 class="mb-5">Coffee beans</h1>
                 </a>
		             <%ArrayList<Producto> prod2 = bd.productosPorCategoria("Coffee beans");
		                 	
		                 for(int i=5; i<(prod2.size()); i++){ %>
		                	 <div class="row align-items-center mb-5">
		                        <div class="col-4 col-sm-3">
		                            <a href="product.jsp?idProducto=<%=prod2.get(i).getIdProducto()%>" class m="navbar-brand px-lg-4 m-0">
		                                <img class="w-100 rounded-circle mb-3 mb-sm-0" src="img/products/<%=prod2.get(i).getIdProducto()%>.png" alt="">
		                            	<h5 class="menu-price">$<%=prod2.get(i).getPrecio()%></h5>
		                            </a>
		                            
		                            
		                        </div>
		                        <div class="col-8 col-sm-9">
		                            <a href="product.jsp?idProducto=<%=prod2.get(i).getIdProducto()%>" class m ="navbar-brand px-lg-4 m-0">
		                                <h4><%=prod2.get(i).getNombre_producto()%></h4>
		                            </a>
		                            <p class="m-0"><%=prod2.get(i).getDescripcion() %></p>
		                        </div>
		                    </div>      	 
		                 <%}%>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Menu End -->


    <!-- Reservation Start -->
    <div class="container-fluid my-5">
        <div class="container">
            <div class="reservation position-relative overlay-top overlay-bottom">
                <div class="row align-items-center">
                    <div class="col-lg-6 my-5 my-lg-0">
                        <div class="p-5">
                            <div class="mb-4">
                                <h1 class="display-3 text-primary">30% OFF</h1>
                                <h1 class="text-white">For Online Reservation</h1>
                            </div>
                            <p class="text-white">Lorem justo clita erat lorem labore ea, justo dolor lorem ipsum ut sed eos,
                                ipsum et dolor kasd sit ea justo. Erat justo sed sed diam. Ea et erat ut sed diam sea</p>
                            <ul class="list-inline text-white m-0">
                                <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                                <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                                <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="text-center p-5" style="background: rgba(51, 33, 29, .8);">
                            <h1 class="text-white mb-4 mt-5">Book Your Table</h1>
                            <form class="mb-5">
                                <div class="form-group">
                                    <input type="text" class="form-control bg-transparent border-primary p-4" placeholder="Name"
                                        required="required" />
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control bg-transparent border-primary p-4" placeholder="Email"
                                        required="required" />
                                </div>
                                <div class="form-group">
                                    <div class="date" id="date" data-target-input="nearest">
                                        <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input" placeholder="Date" data-target="#date" data-toggle="datetimepicker"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="time" id="time" data-target-input="nearest">
                                        <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input" placeholder="Time" data-target="#time" data-toggle="datetimepicker"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <select class="custom-select bg-transparent border-primary px-4" style="height: 49px;">
                                        <option selected>Person</option>
                                        <option value="1">Person 1</option>
                                        <option value="2">Person 2</option>
                                        <option value="3">Person 3</option>
                                        <option value="3">Person 4</option>
                                    </select>
                                </div>
                                
                                <div>
                                    <button class="btn btn-primary btn-block font-weight-bold py-3" type="submit">Book Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Reservation End -->


    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Testimonial</h4>
                <h1 class="display-4">Our Clients Say</h1>
            </div>
            <div class="owl-carousel testimonial-carousel">
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-1.jpg" alt="">
                        <div class="ml-3">
                            <h4>Client Name</h4>
                            <i>Profession</i>
                        </div>
                    </div>
                    <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                </div>
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-2.jpg" alt="">
                        <div class="ml-3">
                            <h4>Client Name</h4>
                            <i>Profession</i>
                        </div>
                    </div>
                    <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                </div>
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-3.jpg" alt="">
                        <div class="ml-3">
                            <h4>Client Name</h4>
                            <i>Profession</i>
                        </div>
                    </div>
                    <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                </div>
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="img/testimonial-4.jpg" alt="">
                        <div class="ml-3">
                            <h4>Client Name</h4>
                            <i>Profession</i>
                        </div>
                    </div>
                    <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


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
    
    <!-- Script carrousel products  -->
    <script src="jscarousel/jquery.min.js"></script>
	<script src="jscarousel/popper.js"></script>
	<script src="jscarousel/bootstrap.min.js"></script>
	<script src="jscarousel/owl.carousel.min.js"></script>
	<script src="jscarousel/main.js"></script>
	
	<script src="js/jsCarru.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>