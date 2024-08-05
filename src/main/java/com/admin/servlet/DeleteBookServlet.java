package com.admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBconnect;

@WebServlet("/deletebook")
public class DeleteBookServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			int uid=Integer.parseInt(request.getParameter("id"));
			
			BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
			boolean f =  dao.deleteBooks(uid);
			
			if(f) {
				HttpSession session = request.getSession();
		        session.setAttribute("status", "Book deleted successfully!");
				
				
				response.sendRedirect("admin/allbook.jsp");
				
			}else{
				 
				response.sendRedirect("admin/allbook.jsp");
			}
			
			
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	
}
