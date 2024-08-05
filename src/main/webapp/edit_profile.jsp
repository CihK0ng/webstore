<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile page</title>
</head>
<body>
	<div class="container-fluid"
		style="height: 5px; background-color: #ffab91"></div>

	<div class="container-fluid p-3 bg-light">

		<div class="row">
			<div class="col-md-3">
				<h3>
					<i class="fa-solid fa-book-bookmark"></i> WeBooks
				</h3>
			</div>
			<div class="col-md-6">
				<form class="form-inline my-2 my-lg-0" role="search">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>

		</div>
	</div>


	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						aria-current="page" href="Home.jsp">Home<span class="sr-only">(Current)</span></a></li>
					<li class="nav-item active"><a class="nav-link"
						href="all_recentbook.jsp"><i class="fa-solid fa-book-open"></i>
							Recent</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="all_newbook.jsp"><i class="fa-solid fa-book-open"></i>
							New Book</a></li>
					<li class="nav-item active"><a class="nav-link disabled"
						href="all_oldbook.jsp" aria-disabled="true"><i
							class="fa-solid fa-book"></i> Old Book</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0" role="search">
					<button class="btn btn-light my-2 my-sm-0" type="submit">
						<i class="fa-solid fa-gear"></i> Setting
					</button>
					<button class="btn btn-light my-2 my-sm-0" type="submit">
						<i class="fa-solid fa-headset"></i> Contact Us
					</button>
				</form>
			</div>
		</div>
	</nav>

	<form method="post" action="register" class="register-form"
		id="register-form">
		<div class="form-group">
			<label for="name"><i
				class="zmdi zmdi-account material-icons-name"></i></label> <input
				type="text" name="name" id="name" placeholder="Your Name" />
		</div>
		
		<div class="form-group">
			<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
				type="password" name="pass" id="pass" placeholder="Password" />
		</div>
		<div class="form-group">
			<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label> <input
				type="password" name="re_pass" id="re_pass"
				placeholder="Repeat your password" />
		</div>
		<div class="form-group">
			<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label> <input
				type="text" name="contact" id="contact" placeholder="Contact no" />
		</div>
		<div class="form-group">
			
		</div>
		<div class="form-group form-button">
			<input type="submit" name="signup" id="signup" class="form-submit"
				value="Register" />
		</div>
	</form>










	<div class="container-fuild text-center text-black p-3"
		style="background-color: #ffab91;">
		<h3>Design and developed by chinh - giang</h3>

	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>