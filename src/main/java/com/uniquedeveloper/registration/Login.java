package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			String uemail = request.getParameter("username");
			String upwd = request.getParameter("password");
			HttpSession session = request.getSession();
			RequestDispatcher dispatch = null;
			Connection con = null;

			// kiem tra va dang nhap va admin
			if ("admin@gmail.com".equals(uemail) && "admin".equals(upwd)) {
				dispatch = request.getRequestDispatcher("admin/home.jsp");
				dispatch.forward(request, response);
				return;
				
			} 
			else {
				
				// kiem tra va dang nhap vao users 			
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube?useSSL=false", "root", "Chinh2002@");

				// kiem tra xem email co ton tai hay khong
				PreparedStatement ps = con.prepareStatement("select * from users where uemail = ? and upwd = ?");
				ps.setString(1, uemail);
				ps.setString(2, upwd);

				ResultSet result = ps.executeQuery();
				if (result.next()) {
					session.setAttribute("name", result.getString("uname"));
					dispatch = request.getRequestDispatcher("Home.jsp");
				} else {
					request.setAttribute("status", "failed");
					dispatch = request.getRequestDispatcher("login.jsp");
				}
				dispatch.forward(request, response);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} 

		

	}

}
