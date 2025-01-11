<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/70323fe49f.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/styleh.css">


<title>Setting Us</title>


<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
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

			<div class="col-md-3">
				<%
				HttpSession session5 = request.getSession(false);
				String userName = (session5 != null) ? (String) session5.getAttribute("name") : null;
				User userObj = (session5 != null) ? (User) session5.getAttribute("userobj") : null;
				
				if (userName != null) {
				%>
				<a href=""> <i class="fa-solid fa-cart-shopping"></i>
				</a> <a href="#" class="btn btn-success"><%=userName%></a>

				<%
				} else {
				%>

				<a href="login.jsp" class="btn btn-success">Login</a>

				<%
				}
				%>

				<a href="logout" class="btn btn-primary ">Logout</a>

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


	<div class="container">
		<h3>Hello, Chinh</h3>

		<div class="col-md-4">
			<a href="edit_profile.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-primary">
							<i class="fa-regular fa-id-card fa-3x"></i><br>
						</div>
						<h4>Login & Security</h4>
						<p> Thay doi tai khoan mat khau </p>
					</div>
				</div>
			</a>
		</div>

		<div class="col-md-4">
			<a href=".jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-danger">
							<i class="fa-solid fa-box-open fa-3x"></i><br>
						</div>
						<h4>Order</h4>
						<p> xem hoa don o day </p>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-4">
			<a href=".jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-warning">
							<i class="fa-solid fa-location-dot fa-3x"></i><br>
						</div>
						<h4>Your Address</h4>
						<p> cap nhap thong tin dia chi </p>
					</div>
				</div>
			</a>
		</div>


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