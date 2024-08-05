package com.uniquedeveloper.registration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */

public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	//  button thoat khoi tai khoan 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
//		session.invalidate();  // ket thuc 1 session lam viec 
//		RequestDispatcher dp = request.getRequestDispatcher("login.jsp");
//		dp.forward(request, response);
	}

}
