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

<title>Cart Page</title>


<style type="text/css">
.back-img {
	background-image: url("images/OIP.jpg");
	height: 80vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #ececec;
}
</style>
</head>
<body>

	<h1>Cart Page</h1>


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

	<nav class="container-fluid back-img" class="text-center">
		<h3>WeBooks Management System</h3>
	</nav>


	<div class="container">
		<div class="row">

			<div class="col-md-6">
				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Item</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card ">
					<div class="card body">
						<h3 class="text-center text-success">Your Detail For Order</h3>

						<form action="">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label> <input type="email"
										class="form-control" id="inputEmail4">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Phone Number</label> <input
										type="number" class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Land</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Pin Code</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-group">
								<label>Payment Type</label> <select class="form-control">
									<option>--Select--</option>
									<option>Cash On Delivery</option>
								</select>
							</div>
							
							<div class="text-center">
							<button class="btn btn-warning">Order Now</button>
							<a href="home.jsp" class="btn btn-success">Continue Shopping</a>
							</div>
						</form>



					</div>
				</div>
			</div>


		</div>
	</div>

</body>
</html>