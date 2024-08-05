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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/styleadmin.css">


<title>Admin: home page</title>

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
		<h3>
			<i class="fa-solid fa-book-bookmark"></i> WeBooks
		</h3>
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
						aria-current="page" href="#">Home<span class="sr-only">(Current)</span></a></li>

				</ul>

			</div>
		</div>
	</nav>

	<p class="text-center">Admin: home</p>

	<div class="container">
		<div class="row p-5">

			<div class="col-md-3">
				<a href="admin/addbook.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="admin/allbook.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x text-danger"></i><br>
							<h4>All Books</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="admin/order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-brands fa-dropbox fa-3x text-warnings"></i><br>
							<h4>Orders</h4>
						</div>
					</div>
				</a>
			</div>



			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
							<h4>Log out</h4>
							------
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!--  bat dau logout thong bao  -->

	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModalCenter">Launch demo modal</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do you want to logout</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="logout" type="button" class="btn btn-primary text-white">Logout</a>
					</div>

				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

	<!--   ket thuc logout thong bao  -->


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