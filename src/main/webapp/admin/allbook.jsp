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


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/styleadmin.css">


<title>Admin: All Books Page</title>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>

	<%
	HttpSession sessions = request.getSession(false);
	if (session != null && sessions.getAttribute("status") != null) {
		String status = (String) sessions.getAttribute("status");
	%>
	<script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '<%=status%>
		'
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
						aria-current="page"
						href="<%=request.getContextPath()%>/admin/home.jsp">Home<span
							class="sr-only">(Current)</span></a></li>

				</ul>

			</div>
		</div>
	</nav>

	<table class="table">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>

			</tr>
		</thead>
		<tbody>
			<%
			try {
				BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());

				List<BookDtls> list = dao.getAllBook();

				// K
				if (list != null && !list.isEmpty()) {
					for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img alt="" src="../book/<%=b.getUphoto()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getUbookname()%></td>
				<td><%=b.getUauthor()%></td>
				<td><%=b.getUprice()%></td>
				<td><%=b.getUbookCategory()%></td>
				<td><%=b.getUstatus()%></td>
				<td><a href="edit_book.jsp?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-primary"><i
						class="fa-solid fa-pen-to-square"></i>edit</a> <a
					href="../deletebook?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-danger"><i
						class="fa-regular fa-trash-can"></i>delete</a></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="8">No books found.</td>
			</tr>
			<%
			}
			} catch (Exception e) {
			e.printStackTrace();
			%>
			<tr>
				<td colspan="8">Error: <%=e.getMessage()%></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>





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