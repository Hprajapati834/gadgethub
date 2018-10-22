<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style/style.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">

/* h1.alert{
	font-size: 20px;
	box-shadow: 2px 2px 10px #333333;
} */

</style>
<style type="text/css">
.input input[type="taxt"],
.input input[type="password"]{
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


	<h1  class="form">Login</h1>
	<br>
 <div style="width: 100%; align-items: center;margin: auto;border: double;text-align: center;padding: 20px;border-radius: 3px;background-color: #f0f0f0; ">
	<form action="Login" method="post">
<label>Enter User Name</label>
		<input style="text-align: center; font-size: 15pt;" class="input" type="text" name="name" class="form-control" placeholder="Enter User Name" value="${name}">
			
		<br>
		<label>Enter Password</label>
		<input style="text-align: center; font-size: 15pt;" class="input" type="password" name="password" class="form-control"
			placeholder="Enter Password ">
			
		<br>
			
		<c:if test="${not empty error}">
		
		
		<h1 class="alert alert-danger">Invalid Credentials</h1>
		
		</c:if>
			
		<br> <input type="submit"
		style="float: left;"	value="Login" class="btn btn-success"><a href="signup.jsp" class= "btn btn-danger" style="float: right;">SignUP</a>



	</form>
</div>
</body>
</html>