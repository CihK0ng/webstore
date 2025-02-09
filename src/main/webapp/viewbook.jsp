	<%@page import="com.entity.BookDtls"%>
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
	
	
	<title>View Book Detail</title>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.16.105/pdf.min.js"></script>
	
	
	<style type="text/css">
	.crd-ho:hover {
		background-color: #ececec;
	}
	
	#pdfCanvas {
		border: 1px solid black;
		width: 100%;
		height: auto;
	}
	</style>
	</head>
	<body style="background-color: #f0f1f2;">
	
	
	
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
					<a href="login.jsp" class="btn btn-success ">Login</a> <a
						href="registration.jsp" class="btn btn-primary ">Register</a>
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
	
	
	
		<%
		int bid = Integer.parseInt(request.getParameter("bid"));
		BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
	
		BookDtls b = dao.getBookById(bid);
		%>
	
		<div class="container p-3">
			<div class="row">
				<div class="col-md-6 text-center p-5 border bg-white">
					<img alt="" src="book/<%=b.getUphoto()%>"
						style="width: 250px; height: 100px"><br>
					<h4 class="mt-4">
						Book Name:<span class="text-success"> <%=b.getUbookname()%></span>
					</h4>
					<h4>
						Author Name:<span class="text-success"> <%=b.getUauthor()%></span>
					</h4>
					<h4>
						Categories:<span class="text-success"> <%=b.getUbookCategory()%></span>
					</h4>
				</div>
	
				<div class="col-md-6 text-center p-5 border bg-white">
					<h2><%=b.getUbookname()%></h2>
	
					<%
					if ("Old".equals(b.getUbookCategory())) {
					%>
					<h5 class="text-primary">Contact to Seller</h5>
					<h5 class="text-primary">
						<i class="far fa-envelope"></i> EMAIL :
						<%=b.getEmail()%>
					</h5>
	
					<%
					}
					%>
	
	
					<div class="row">
						<div class="col-md-4 text-danger text-center p-2">
							<i class="fa-solid fa-money-bill-transfer fa-2x"></i>
							<p>Thanh toan qua van chuyen</p>
						</div>
						<div class="col-md-4 text-danger text-center p-2">
							<i class="fa-solid fa-rotate-left fa-2x"></i>
							<p>Huy don giao dich</p>
						</div>
						<div class="col-md-4 text-danger text-center p-2">
							<i class="fa-solid fa-truck fa-2x"></i><br>
							<p>Mien phi van chuyen</p>
						</div>
					</div>
	
	
	
					<%
					if ("Old".equals(b.getUbookCategory())) {
					%>
					<div class=" text-center p-3">
						<a href="" class="btn btn-success"><i class="fas fa-cart-plus"></i>
							Continue Shopping</a> <a href="" class="btn btn-danger"><%=b.getUprice()%>
							<i class="fas fa-rupee-sign"></i></a>
					</div>
					<%
					} else {
					%>
					<div class=" text-center p-3">
						<a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i>
							AddCart</a> <a href="" class="btn btn-danger"><%=b.getUprice()%> <i
							class="fas fa-rupee-sign"></i></a>
					</div>
	
					<%
					}
					%>
	
	
	
				</div>
			</div>
		</div>
	
	
		<div class="container p-3">
			<div class="text-center p-5 border bg-white">
				<h1 class="">Preview Book</h1>
	
				<iframe src="pdf/baoca.pdf" width="100%" height="600px"></iframe>
				<div id="pdfCanvasContainer"></div>
	
			</div>
	
	
		</div>
	
	
	
		<div class="container-fuild text-center text-black p-3"
			style="background-color: #ffab91;">
			<h3>Design and developed by chinh</h3>
	
		</div>
	
	
		<script>
		const url = "viewPdf?bookId=<%=request.getParameter("bid")%>";
	
		const canvas = document.getElementById('pdfCanvasContainer');
		const context = canvas.getContext('2d');
	
		pdfjsLib.getDocument(url).promise.then(pdfDoc => {
		    const totalPages = pdfDoc.numPages;
		    let currentPage = 1;
	
		    // Hàm hiển thị từng trang PDF
		    const renderPage = (pageNum) => {
		        pdfDoc.getPage(pageNum).then(page => {
		            const viewport = page.getViewport({ scale: 1.5 });
		            canvas.width = viewport.width;
		            canvas.height = viewport.height;
	
		            const renderContext = {
		                canvasContext: context,
		                viewport: viewport
		            };
	
		            page.render(renderContext).promise.then(() => {
		                if (currentPage < totalPages) {
		                    currentPage++;
		                    renderPage(currentPage); // Hiển thị trang tiếp theo
		                }
		            });
		        });
		    };
	
		    // Bắt đầu hiển thị từ trang đầu tiên
		    renderPage(currentPage);
		}).catch(error => {
		    console.error("Error loading PDF:", error);
		    alert("Could not load PDF. Please try again later.");
		});
	
	    </script>
	
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