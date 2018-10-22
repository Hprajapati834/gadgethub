<%@include file="header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.input input[type="taxt"]{
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

<h1  class="form">Add Category</h1>
<div style="width: 50%; align-items: center;margin: auto;border: double;text-align: center;padding: 20px;border-radius: 3px;background-color: #f0f0f0; ">
<form action="AddCategory" method="post">
<label>Enter Category Name</label>
	<input class ="input" type="text" style="text-align: center;" name="name" class="form-control" placeholder="Enter Category Name">
	<c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.name}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
				
		</c:if>
	<br>
	<br>
	<label>Enter Category Description</label>
	<input class ="input" type="text" style="text-align: center;" name="description" class="form-control" placeholder="Enter Category Description" >
	<c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.description}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			
	</c:if>
	<br>
	<input type="submit" value="Submit" class="btn btn-primary">

</form>
</div>
</body>
</html>