package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBconnect;
import com.entity.BookDtls;

@WebServlet("/addbook")
@MultipartConfig
public class Addbook extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		try {
			String ubookname = request.getParameter("bname");
			String uauthor = request.getParameter("author");
			String uprice = request.getParameter("price");
			String ucategories = request.getParameter("categories");
			String ustatus = request.getParameter("bstatus");
			Part part = request.getPart("bimg");
			String filename = part.getSubmittedFileName();
			
			BookDtls b = new BookDtls(ubookname, uauthor, uprice, ucategories, ustatus, filename,"admin");
			
			
			BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
			
			boolean f = dao.addBooks(b);
			
		
			if(f) {
				String path = getServletContext().getRealPath("") + "book";
				
				File file = new File(path);
				
				part.write(path + File.separator + filename);
				
				
				HttpSession session = request.getSession();
		        session.setAttribute("status", "Book added successfully!");
				
				
				response.sendRedirect("admin/addbook.jsp");
			}else{
				
				response.sendRedirect("admin/addbook.jsp");
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	

}
