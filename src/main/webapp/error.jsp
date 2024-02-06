<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ page isErrorPage ="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>



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

<div class="container text-center">
    <img alt="error" src="images/error.png" width="200px">
    <h3 class="display-4 mt-5">Sorry! Something went wrong...</h3>
    <br>
    <%=exception%>
    <br>
    <a href = "index.jsp" class = "btn primary-bg btn-lg text-white mt-5">Home</a>
</div>

</body>
</html>