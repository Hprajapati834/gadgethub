<%@include file="header.jsp" %>
<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style/style.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
	ProductDAO pdao = new ProductDAOImpl();

	request.setAttribute("Product", pdao.getProduct(Integer.parseInt(request.getParameter("id"))));
%>
<style type="text/css">
#img{
width: 100px;
height: 100px;
}
#img:hover {
	width: 600px;
	height: 500px;
	
		border:2px solid #fff;
		background: url(img/tiger.png) no-repeat;
		-moz-box-shadow: 10px 10px 5px #ccc;
		-webkit-box-shadow: 10px 10px 5px #ccc;
		box-shadow: 10px 10px 5px #ccc;
		-moz-border-radius:25px;
		-webkit-border-radius:25px;
		border-radius:25px;
}
#img {
	
	
		border:2px solid #fff;
		background: url(img/tiger.png) no-repeat;
		-moz-box-shadow: 10px 10px 5px #ccc;
		-webkit-box-shadow: 10px 10px 5px #ccc;
		box-shadow: 10px 10px 5px #ccc;
		-moz-border-radius:25px;
		-webkit-border-radius:25px;
		border-radius:25px;
}
.input input[type="email"],
.input input[type="number"]
{
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

	<h1  class="form">Viewing Product: ${Product.getName()}</h1>
<div style="width: 100%; align-items: center;margin: auto;border: double;text-align: center;padding: 20px;border-radius: 3px;background-color: #f0f0f0; ">
	<table class="table table-striped"
		style="font-size: 20px; font-weight: bold;">
		<tbody>


			<tr>
				<td colspan="2">
					<center>
						<img src="${Product.getImagePath()}" 
							class="img img-thumbnail" id="img" />
					</center>
				</td>

			</tr>

			<tr>
				<td>Name</td>
				<td>${Product.getName()}</td>

			</tr>

			<tr>
				<td>Description</td>
				<td>${Product.getDescription()}</td>

			</tr>

			<tr>
				<td>Price</td>
				<td>${Product.getPrice()}</td>

			</tr>

		</tbody>
	</table>

	<form action="AddCart" method="post">

		<input   type="hidden" value="${Product.getId()}" name="pid">
	<%-- 	<c:if test="${sessionScope.role == 'ROLE_USER'}"> --%>
		<c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
		 <input  class="input" style="text-align: center; font-size: 15pt;" type="number" name="qty" class="form-control" placeholder="Enter Qty">
		<c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.email}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			
	</c:if>
	</c:if>
	<%-- </c:if> --%>
	<c:if test="${sessionScope.role == 'ROLE_ADMIN'}"> 
		<c:if test="${sessionScope.role == 'ROLE_USER'}"> 
		<%-- <c:if test="${sessionScope.role == 'ROLE_ADMIN'}"> --%>
		 <input class="input" style=" font-size: 15pt;" type="number" name="qty" class="form-control" placeholder="Enter Qty">
		<c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.email}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			</c:if>
	</c:if>

	<%-- </c:if> --%>
		<br> 
		<input class="input" type="email" name="email" class="form-control"placeholder="Enter Email" value="${loggedInUserEmail}"> 
		<c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.email}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			
	</c:if>
		
		<br>  <input type="submit" value="Submit"
			class="btn btn-primary">
			</div>
			<br>
			<br>
			<br>
			
			    <br>
			     <br>
			      <br>
			       <br>
			</c:if>
			<c:if test="${sessionScope.role != 'ROLE_ADMIN'}">
            <c:if test="${sessionScope.role != 'ROLE_USER'}">
			<a href="Login.jsp" class= "btn btn-danger" style="float: right;">Login</a>
			</c:if></c:if>
	</form>
</body>
</html>