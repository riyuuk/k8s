<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>K8s</title>
<link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style type="text/css">
.header-main {
	padding: 20px;
	width: auto;
}
</style>
</head>
<body>
	<div class="div-main" class="container">
		<header class="header-main">
			<h1 align="center" style="color: yellow;">Welcome to K8s test..
				Add User</h1>
		</header>
	</div>
	<div>
		<form:form action="/addUser" method="post" modelAttribute="user">
			<div class="form-group mx-sm-3 mb-2">
				<label for="" style="color: black;">User Name : </label>
				<form:input type="text" style="" class="form-control" id="input1"
					required="true" path="name"></form:input>
			</div>
			<div class="form-group mx-sm-3 mb-2">
				<button type="submit" class="btn btn-outline-success">Add</button>
			</div>
		</form:form>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>