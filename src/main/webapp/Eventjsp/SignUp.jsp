<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is Registration Module</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body
	style="background: url(img/registrationBg.jpg); background-size: cover; background-attachment: fixed;">
	<div class="container">
		<div class="row">
			<div class="col m6 offset-m3">
				<div class="card">
					<div class="card-content">
						<h3 style="margin-top: 0px;" class="center-align">Register
							here</h3>

						<h5 id="msg" class="center-align"></h5>

						<div class="form center-align">
							<form action="Signupservlet" method="post" id="myform">
								<input type="text" name="firstname"
									placeholder="Enter first name"> <input type="text"
									name="lastname" placeholder="Enter last name"> <input
									type="email" name="user_email" placeholder="Enter your email">
								<input type="password" name="password" placeholder="Password">
								<input type="password" name="password2"
									placeholder="Re-enter Password">

								<button type="submit" class="btn #76ff03 light-green accent-3">Sign
									Up</button>
							</form>
							<p>
								By creating this account, you agree to our <a id="privacy"
									href="PrivacyPolicy.jsp">Privacy Policy</a>.
							</p>
							<h6>
								Already have an account ? <a href="SignIn.jsp">Sign In</a>
							</h6>
							<a id="home" href="index.jsp" class="btn">Home</a>
						</div>
						
						<div class="loader center-align"
							style="margin-top: 10px; display: none;">
							<div class="preloader-wrapper big active">
								<div class="spinner-layer spinner-blue">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-red">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-yellow">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-green">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>
							</div>
							<h5>Please Wait...</h5>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous">
		
	</script>
	<script>
		$(document).ready(function() {
			console.log("JQuery Connected successfully");
			$("#home").hide()
		})

		$("#myform").on('submit', function(event) {
			event.preventDefault();

			var f = $(this).serialize();

			$.ajax({
				url : "Signupservlet",
				data : f,
				type : 'POST',
				beforeSend : function() {
					$(".loader").show();
					$(".form").hide();
				},
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					console.log("success...");
					$(".loader").hide();
					$(".form").show();
					$("#home").show();
					if (data.trim() == "Success") {
						$('#msg').html("Successfully Registered");
						$('#msg').addClass('green-text');
					} else if (data.trim() == "Wrongpw") {
						$('#msg').html("Password mismatched");
						$('#msg').addClass('red-text');
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log(jqXHR);
					console.log("error....");
					$(".loader").hide();
					$(".form").show();
					$('#msg').html("Something went wrong on server");
				},
				processData : false
			})
		})
		
	</script>

</body>
</html>