$(document).ready(function() {
	console.log("loaded...")

	$("#signup-form").on('submit', function(event) {
		event.preventDefault();

		let form = new FormData(this);

		$("#submit-btn").hide();
		$("#loader").show();

		//send register servlet
		$.ajax({
			url: "/TechStack/signup", // Adjust the URL here
			type: 'POST',
			data: form,
			processData: false,
			contentType: false,

			success: function(data, textStatus, jqXHR) {
				$("#submit-btn").show();
				$("#loader").hide();
				
				swal("registered successfully... we are redirecting to signin page")
					.then((value) => {
						window.location = "signin.jsp";
					});

				
			},
			error: function(jqXHR, textStatus, errorThrown) {
				$("#submit-btn").show();
				$("#loader").hide();

				swal("Something went wrong...")
					.then((value) => {
						window.location = "signin.jsp";
					});

			},
		});
	});
});
