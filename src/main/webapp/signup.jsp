<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


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
.banner-bg {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 81%, 68% 100%, 34% 84%, 0 97%, 0 0);
}
</style>


<meta charset="ISO-8859-1">
<title>Sign up Page</title>
</head>
<body>

	<%@ include file="normal_navbar.jsp"%>
	<%
	String msg = (String) session.getAttribute("msgKey");
	%>




	<main class="primary-bg banner-bg" style="padding-bottom: 130px;">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center primary-bg text-white">
						<span class="fa fa-users fa-3x"></span> <br>Register here
					</div>
					<div class="card-body">


						<form action="signup" method="post" id="signup-form">

							<div class="form-group">
								<label for="username1">Username</label> <input type="text"
									class="form-control" name="username1" id="username1"
									placeholder="Enter username">
							</div>



							<div class="form-group">
								<label for="email1">Email address</label> <input type="email"
									class="form-control" name="email1" aria-describedby="emailHelp"
									placeholder="Enter email"> <small id="email1"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>



							<div class="form-group">
								<label for="pass1">Password</label> <input type="password"
									class="form-control" id="pass1" name="pass1"
									placeholder="Password">
							</div>


							<div class="form-group">
								<label for="gender1">Gender : </label> Male <input type="radio"
									name="gender1" value="Male"> Female <input type="radio"
									name="gender1" value="Female">

							</div>

							<div class="form-group">
								<textarea name="about1" maxlength="255" rows="5"
									class="form-control"
									placeholder="Write Something about yourself"></textarea>
							</div>


							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="check1">
								<label class="form-check-label" for="check1">Agree terms
									and conditions</label>
							</div>



							<div class="container" id="loader"
								style="text-align: center; display: none;">
								<span class="fa fa-refresh fa-spin fa-3x"></span>
								<h4>Please wait...</h4>
							</div>

							<button id="submit-btn" type="submit"
								class="btn btn-primary mt-2">Submit</button>
						</form>
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

	<!-- CheckBox required -->
	<script type="text/javascript">
		document.getElementById("check1").required = true;
	</script>


	<!-- ajax based implementation -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript" src="js_files/ajax.js"></script>
</body>
</html>