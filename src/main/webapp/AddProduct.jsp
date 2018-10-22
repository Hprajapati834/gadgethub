<%@include file="header.jsp" %>
<%@page import="impl.CategoryDAOImpl" %>
<%@page import="dao.CategoryDAO" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <% CategoryDAO cdao = new CategoryDAOImpl();
    request.setAttribute("categories",cdao.getCategory());
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style/style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">

.input input[type="taxt"}{

 width: calc(50% - 22px);
    height: 45px;
    outline: none;
    border: 1px solid #ddd;
    padding: 0 10px;
    border-radius: 20px;
    font-size: 0.8rem;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
   
}
</style>

</head>
<body style="margin: auto; width: 80%;">

<h1 class="form" >Add Product</h1>
<div style="width: 50%; align-items: center;margin: auto;border: double;text-align: center;padding: 20px;border-radius: 3px;background-color: #f0f0f0; ">
<form action="AddProduct" method="post" enctype="multipart/form-data" class="input">
	<label>Enter Product Name</label>
	<input class="input" style="text-align: center; font-size: 15pt;" type="text" name="name" class="form-control" placeholder="Enter Product Name">
	<br>
	<label>Enter Product Description </label>
	<input class="input" style="text-align: center; font-size: 15pt;" type="text" name="description" class="form-control" placeholder="Enter Product Description" >
	<br>
	<label>Enter Product Price</label>
	<input class="input" style="text-align: center; font-size: 15pt;" type="text" name="price" class="form-control" placeholder="Enter Product Price">
	<br>
	<label>Select Product Category</label>
	<select class="form-control" name="cat" style="height:  45px;font-size: 15pt; ">
	<c:forEach items="${categories}" var="x">
	<option value="${x.getId()}">${x.getName()}</option>
	</c:forEach>
	 </select>
	<br>
	
	
	
	<input type="file" name="myFile">
		<br>
	<input type="submit" value="Submit" class="btn btn-primary">

</form>
</div>

</body>
</html>