<%@page import="com.tech.stack.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>


<!-- css -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- mystyle.css -->
<link rel="stylesheet" href="css_files/mystyle.css">

<!-- fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
.banner-background {
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 81%, 68% 100%, 34% 84%, 0 97%, 0 0);
}
</style>

</head>



<body>


	<!-- navbar -->
	<%@include file="normal_navbar.jsp"%>


	<!-- banner -->
	<div class="container-fluid m-0 p-0 banner-background">
		<div class="jumbotron primary-bg  text-white">
			<div class="container">
				<h3 class="display-3">Welcome to TechStack</h3>
				<p>
					<span class="fa fa-child"></span> Hey... Dipanshu here ! A tech
					stack, short for technology stack, refers to the combination of
					programming languages, frameworks, libraries, tools, and software
					used to develop and run a web or mobile application.
				</p>
				<p>It is essentially the set of technologies that form the
					foundation of a software project.The choice of a tech stack is a
					crucial decision in the development process, as it directly impacts
					the project's scalability, performance, and overall success.</p>

				<button class="btn btn-outline-light btn-lg">
					<span class="fa fa-line-chart"></span> Start! its free
				</button>
				<a href = "signin.jsp" class="btn btn-outline-light btn-lg">
					<span class="fa fa-sign-in"></span> Sign in
				</a>

			</div>
		</div>
	</div>


	<!-- cards -->
	<div class="container">
		<div class="row mb-3">
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Java Programing</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-bg text-white">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Java Programing</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-bg text-white">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Java Programing</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-bg text-white">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Java Programing</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-bg text-white">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Java Programing</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-bg text-white">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Java Programing</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-bg text-white">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>



	</div>



	<!-- javascripts -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="js_files/myjs.js"></script>
</body>



</html>