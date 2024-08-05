package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
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


/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////		// TODO Auto-generated method stub
////		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String uname = request.getParameter("name");
		String upwd = request.getParameter("pass");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("contact");
//	
//		PrintWriter out = response.getWriter();

		RequestDispatcher dp = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube?useSSL=false", "root", "Chinh2002@");
			
			//kiem tra xem co ton tại email hay không 
			PreparedStatement checkEmailStmt = con.prepareStatement("SELECT COUNT(*) FROM users WHERE uemail = ?");
            checkEmailStmt.setString(1, uemail);
            ResultSet rs = checkEmailStmt.executeQuery();
            rs.next();
            if (rs.getInt(1) > 0) {
                // Email already exists
                request.setAttribute("status", "emailexists");
                dp = request.getRequestDispatcher("registration.jsp");
                dp.forward(request, response);
                return;
            }
			
			
			PreparedStatement pst = con.prepareStatement("insert into users(uname, upwd, uemail, umobile) values(?,?,?,?) ");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			
			int rowCount = pst.executeUpdate(); //  thuc hien cau truy van cap nhap va luu gia tri 
			dp = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dp.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		
		}
	}
	
	

}











