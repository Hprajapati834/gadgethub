<!DOCTYPE html>
<html lang="en">
<head>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <title>Gadget Hub</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
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
<style type="text/css">

</style>

</head>
<body>

<!--==========================
    Header
  ============================-->
  <header id="header" style="background-color:#3df0b4;">
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
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="Index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
         
          <li class="menu-has-children"><a href="ViewProducts.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Shop</a>
           <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
            <ul style=" margin-top: -10px;background-color:rgba(9, 239, 36, 0.53);">
              <li><a href="AddProduct.jsp">Add Products</a></li>
              <li><a href="ViewProducts.jsp">Update Products</a></li>
              <li><a href="ViewProducts.jsp">Delete Products</a></li>

            </ul>
            </c:if>
          </li>
            <li class="menu-has-children"><a href="ViewCategories.jsp">Category</a>
           <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
        <!--    <li class="menu-has-children"><a href="ViewCategories.jsp">Category</a> -->
            <ul style=" margin-top: -10px;background-color:rgba(23, 242, 99, 0.64);">
              
              <li><a href="AddCategory.jsp">Add Category</a></li>
              <li><a href="ViewCategories.jsp">Update Category</a></li>
              <li><a href="ViewCategories.jsp">Delete Category</a></li>
             
            </ul>
                 </c:if>
          </li>
      <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
            <li><a href="UserINFO.jsp">Users</a></li>
            </c:if>
           <c:if test="${sessionScope.role == 'ROLE_USER'}">
            
            <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </c:if>
            <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
            <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </c:if>
            
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

</body>
</html>
