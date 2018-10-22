<%@include file="header.jsp" %>
<%@page import="impl.ProductDAOImpl"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Products</title>
<link rel="stylesheet" href="style/style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
     ProductDAO pdao = new ProductDAOImpl();

	request.setAttribute("Products", pdao.getProduct());
%>
<style type="text/css">
#id{

		
		background: url(img/tiger.png) no-repeat;
		-moz-box-shadow: 10px 10px 5px #ccc;
		-webkit-box-shadow: 10px 10px 5px #ccc;
		box-shadow: 10px 10px 5px #ccc;
		-moz-border-radius:25px;
		-webkit-border-radius:25px;
		border-radius:25px;
}
.form{-webkit-box-shadow: 0 8px 6px -6px black;
	   -moz-box-shadow: 0 8px 6px -6px black;
	        box-shadow: 0 8px 6px -6px black;}]
</style>
</head>
<body style="margin: auto; width: 80%;">

	<h1  class="form">View Products</h1>

	<table class="table table-striped" style="font-size: 20px; font-weight: bold;">
		<thead>

			<tr >
				<td>Id</td>
				<td>Name</td>
				<td>Description</td>
				<td>Category</td>
				<td>Price</td>
				<td>Image</td>
				
				<td>Buy</td>
				
			</tr>


		</thead>
		<tbody>

			<c:forEach var="x" items="${Products}">

				<tr id="id">
					<td>${x.getId()}</td>
					<td>${x.getName()}</td>
					<td>${x.getDescription()}</td>
					<td>${x.getCategory().getName()}</td>
					<td>${x.getPrice()}</td>
					 <td><img src="${x.getImagePath()}" style="max-width: 100px;" class="img img-thumbnail"/></td>
					
					<td><a href="ViewSingleProduct.jsp?id=${x.getId()}" class="btn btn-primary">Buy</a></td>
					
				</tr>

			</c:forEach>

		</tbody>
	</table>

</body>
</html>