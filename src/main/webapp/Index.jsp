<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Gadget Hub</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/icons.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container" >
	
      <div id="logo" class="pull-left">
    <div style=" margin-left: -120px" ><img alt="" src="img/icons.png"style="width: 10%; height: 10%; float: left; margin-top: -15px;"></div>
        <h1><a href="index.html" class="scrollto" style="margin-left: -65px; margin-top: -10px;">Gadget Hub</a></h1>
           <c:if test="${sessionScope.role == 'ROLE_USER'}">
        <h1 style="color:white;font-style: italic;font-family: cursive;">&nbsp; Hi <samp style="color:yellow;"> ${sessionScope.name }</samp></h1>
       <%--  <a  href="ViewSingleUser.jsp?id=${x.getId()}" class="btn btn-primary">View Profile</a></p> --%>
        </c:if>
         <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
        <h1 style="color:white;font-style: italic;font-family: cursive;">&nbsp; Hi <samp style="color:yellow;"> ${sessionScope.name }</samp></h1>
       <%--  <a  href="ViewSingleUser.jsp?id=${x.getId()}" class="btn btn-primary">View Profile</a></p> --%>
        </c:if>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title=""></a> -->
      </div>

      <nav id="nav-menu-container"  style=" margin-right: -110px;">
        <ul class="nav-menu">
       
          <li class="menu-active"><a href="#intro"><span class="glyphicon glyphicon-home"></span> Home</a></li>
          <li><a href="#about"><span class="glyphicon glyphicon-info-sign"></span> About Us</a></li>
          
       
          <li><a href="#contact"><span class="glyphicon glyphicon-envelope"></span> Contact Us</a></li>
          
          
         
          <li class="menu-has-children"><a href="ViewProducts.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Shop</a>
           <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
            <ul style=" margin-top: -10px;background-color:rgba(9, 239, 36, 0.53);">
              <li><a href="AddProduct.jsp">Add Products</a></li>
              <li><a href="UpdateProduct.jsp">Update Products</a></li>
              <li><a href="ViewProducts.jsp">Delete Products</a></li>

            </ul>
            </c:if>
          </li>
            <li class="menu-has-children"><a href="ViewCategories.jsp">Category</a>
           <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
        <!--    <li class="menu-has-children"><a href="ViewCategories.jsp">Category</a> -->
            <ul style=" margin-top: -10px;background-color:rgba(23, 242, 99, 0.64);">
              
              <li><a href="AddCategory.jsp">Add Category</a></li>
              <li><a href="UpdateCategory.jsp">Update Category</a></li>
              <li><a href="ViewCategories.jsp">Delete Category</a></li>
             
            </ul>
                 </c:if>
          </li>
          
          <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
          <li><a href="UserINFO.jsp">Users</a></li>
          </c:if>
           <c:if test="${sessionScope.role != 'ROLE_ADMIN'}">
            <c:if test="${sessionScope.role != 'ROLE_USER'}">
          <li><a href="Login.jsp">  <span class="glyphicon glyphicon-log-in"></span> Login</a></li>
           <li><a href="signup.jsp">  <span class="glyphicon glyphicon-user"></span> SignUp</a></li>
          </c:if>
         </c:if>
         
         
          <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
       
          <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
          </c:if>
          <c:if test="${sessionScope.role == 'ROLE_USER'}">
          <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
          </c:if>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">

    <!-- <div class="intro-text">
      <h2>Welcome to Gadget Hub</h2>
      <p></p>
      <a href="product.jsp" class="btn-get-started scrollto">Get Started</a>
    </div>

    <div class="product-screens">

      <div class="product-screen-1 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="0.6s">
        <img src="img/phone.jpg" alt="">
      </div>

      <div class="product-screen-2 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="0.6s">
        <img src="img/oppo.jpg" alt="">
      </div>

      <div class="product-screen-3 wow fadeInUp" data-wow-duration="0.6s">
        <img src="img/mi2.jpg" alt="">
      </div>

    </div>
 -->
 <div class="container-fluid" style="width: 103%; margin-left: -15px;"  >
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
    <div class="intro-text">
      <h2>Welcome to Gadget Hub</h2>
      
      <p></p>
      <a href="product.jsp" class="btn-get-started scrollto">Get Started</a>
    </div>
      <div class="item active">
        <img src="img/banner.jpg"  style="width:100%;height: 657px;">
      </div>

      <div class="item">
        <img src="img/banner(Hp).jpg" style="width:100%; height: 657px;">
      </div>
    
      <div class="item">
        <img src="img/banner_cep.jpg"   style="width:100%;height: 657px;">
      </div>
        <div class="item">
        <img src="img/Servisi-Banner.jpg"   style="width:100%;height: 657px;">
      </div>
        <div class="item">
        <img src="img/newbanner.jpg"   style="width:100%;height: 657px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 
  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about" class="section-bg">
      <div class="container-fluid">
        <div class="section-header">
          <h3 class="section-title">About Us</h3>
          <span class="section-divider"></span>
          <p class="section-description">
Gadget Hub is an Indian company primarily shipping to US committed to deliver Innovation and Convenience to its customers.

          </p>
        </div>

        <div class="row">
          <div class="col-lg-6 about-img wow fadeInLeft">
            <img src="img/icons.png" alt="">
          </div>

          <div class="col-lg-5 content wow fadeInRight">
            <h2>Gadget Hub</h2>
            <p>
 is an Indian company primarily shipping to US , UK and few other countries customer’s committed to deliver Innovation and Convenience to its customers.

We are your one stop destination to all your daily needs – spreading positivity and creativity with our unique finds.

We have started in 2018 and it is our mission to only list the BEST and most AFFORDABLE items on our website.

You, our customers, drive us to be really picky in choosing what products to offer. If you don’t see something list on this web store, it’s probably because we didn’t think much of it or we never encountered it in our search. If you do find a unique product worthy of being listed here, reach out to us.
</p>
</div>
        </div>

      </div>
    </section><!-- #about -->



        <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container">
        <div class="row wow fadeInUp">

          <div class="col-lg-4 col-md-4">
            <div class="contact-about">
              <h3>Gadget Hub</h3>
              <p>Gadget Hub is an Indian company primarily shipping to US committed to deliver Innovation and Convenience to its customers.
</p>
              <div class="social-links">
                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="info">
              <div>
                <i class="ion-ios-location-outline"></i>
                <p>D - 7 South ex new Delhi - 110044</p>
              </div>

              <div>
                <i class="ion-ios-email-outline"></i>
                <p>Hprajapati834@gmail.com</p>
              </div>

              <div>
                <i class="ion-ios-telephone-outline"></i>
                <p>+91 9582961702</p>
              </div>

            </div>
          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message" style="resize: none;"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong>Gadget Hub</strong>. All Rights Reserved
          </div>
         
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="#intro" class="scrollto">Home</a>
            <a href="#about" class="scrollto">About</a>
           
            
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
