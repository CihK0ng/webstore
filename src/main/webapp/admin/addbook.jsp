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

<title>Admin: Add Book</title>


<link rel="stylesheet" href="<%= request.getContextPath() %>/admin/styleaddbook.css">

<!-- them thu vien thong bao  alert-->
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
	<% 
        HttpSession sessions  = request.getSession(false);
        if (session != null && sessions.getAttribute("status") != null) {
            String status = (String) sessions.getAttribute("status");
    %>
            <script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '<%= status %>'
            });
            </script>
    <%
            session.removeAttribute("status"); // Xóa thông báo sau khi hiển thị
        } 
    %>
    		
    

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
						aria-current="page" href="admin/home.jsp">Home<span
							class="sr-only">(Current)</span></a></li>

				</ul>

			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">

			<div class="col-md-4 offset-md-4">

				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Book</h4>

						<form action="../addbook" method="post"
							enctype="multipart/form-data">


							<div class="form-group">
								<label for="exampleInputEmail1">Book Name:</label> <input
									type="text" id="exampleInputEmail1" name="bname"
									class="form-control" aria-describedby="emailHelp">
							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Author:</label> <input
									type="text" id="exampleInputEmail1" name="author"
									class="form-control" aria-describedby="emailHelp">

							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Price:</label> <input
									type="text" id="exampleInputPassword1" name="price"
									class="form-control" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="inputState">Book Categories:</label> <select
									id="inputState" name="categories" class="form-control">
									<option selected>--selected--</option>
									<option value="New">New Book</option>
							
									<option value="New">old</option>
							
									<!-- Add more status options as needed -->
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Book Status:</label> <select
									id="inputState" name="bstatus" class="form-control">
									<option selected>--selected--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<!-- Add more status options as needed -->
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo:</label> <input
									type="file" class="form-control-file" name="bimg"
									id="exampleFormControlFile1">
							</div>

							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>

			</div>
		</div>
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
		
		<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		
			

		
		
</body>
</html>