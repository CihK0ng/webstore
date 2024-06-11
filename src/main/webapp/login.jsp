<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon bieu tuong icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css theme bo cuc web  -->
<link rel="stylesheet" href="css/style.css">

<!-- them thu vien thong bao  alert-->
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>" >

	<div class="main">

		<!-- Dang nhap  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign up</h2>
						<form method="post" action="Login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<a href="forgotPassword.jsp">Forgot Password?</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	
<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status === "failed"){
		swal("Sorry","Wrong username or password","error");
		}
		else if(status === "invalidEmail") {
			swal("Sorry","Please Enter username", "error");
		}
		else if(status === "invalidUpwd") {
			swal("Sorry","Please Enter password", "error");
		}
		else if(status === "resetSuccess") {
			swal("Congrats","Password reser successful", "success");
		}
		else if(status === "resetFailed") {
			swal("Sorry","Password Reset Failed", "error");
		}
</script>


</body>
<!-- Colorlib (https://colorlib.com) -->
</html>