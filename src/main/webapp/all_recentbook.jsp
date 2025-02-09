<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
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



<title>ALL Recent Books</title>

<style type="text/css">

.crd-ho:hover {
	background-color: #ececec;
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
				</a> 
				<a href="#" class="btn btn-success"><%=userName%></a>

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
		<h3 class="text-center">Recent Book</h3>
		<div class="row p-3">
			<%
			try {
				BookDAOImpl dao2 = new BookDAOImpl(DBconnect.getConn());
				List<BookDtls> list2 = dao2.getAllRecentBook();
				if (list2 != null && !list2.isEmpty()) {
					for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getUphoto()%>"
							style="height: 200px; width: 150px" class="img-thumbnail">
						<p><%=b.getUbookname()%></p>
						<p><%=b.getUauthor()%></p>
						<p>Categories:
						<%=b.getUbookCategory()%></p>
							<%
							if (b.getUbookCategory().equals("Old")) {
							%>
						
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Detail</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><%=b.getUprice()%>
								<i class="fa-solid fa-dollar-sign"></i> </a>
						</div>
						<%
						} else {
						%>
						
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Detail</a> <a href=""
								class="btn btn-primary btn-sm "><%=b.getUprice()%> <i
								class="fa-solid fa-dollar-sign"></i> </a>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			}
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>

		</div>
	</div>
	<!--  end reccent book  -->
	
	
	<!--  start footer le cuoi trang  -->
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