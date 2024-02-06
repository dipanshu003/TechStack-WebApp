<%@page import="com.tech.stack.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in Page</title>



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


	<!-- normal nav bar-->
	<%@include file="normal_navbar.jsp"%>




	<!-- Sign in form -->
	<main class="d-flex align-items-center primary-bg banner-background"
		style="height: 100vh; padding-bottom: 50px">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">

					<div class="card">
						<div class="card-header primary-bg text-white "
							style="text-align: center;">
							<span class="fa fa-user-plus fa-3x"></span>
							<h4>Sign in</h4>

						</div>

						<%
						Message msg = (Message) session.getAttribute("msgKey");

						if (msg != null) {
						%>


						<div class="alert <%=msg.getCssClass() %>" role="alert"><%= msg.getCotent()%></div>


						<%
						session.removeAttribute("msgKey");
						}
						%>

						<div class="card-body">


							<form method="post" action="signin">
								<div class="form-group">
									<label for="email">Email address</label> <input type="email"
										class="form-control" name="email1"
										aria-describedby="emailHelp" placeholder="Enter email">
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="pass">Password</label> <input type="password"
										class="form-control" name="pass1" placeholder="Password">
								</div>

								<button type="submit" class="btn primary-bg text-white">Submit</button>

							</form>


						</div>

					</div>
				</div>
			</div>
	</main>



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