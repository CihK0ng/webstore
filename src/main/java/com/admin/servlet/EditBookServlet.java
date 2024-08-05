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
import com.entity.BookDtls;

@WebServlet("/editbooks")
public class EditBookServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
		try {
			int uid = Integer.parseInt(request.getParameter("id"));
			String ubookname = request.getParameter("bname");
			String uauthor = request.getParameter("author");
			String uprice = request.getParameter("price");
			String ustatus = request.getParameter("bstatus");
			
			BookDtls b = new BookDtls();
			b.setBookId(uid);
			b.setUbookname(ubookname);
			b.setUauthor(uauthor);
			b.setUprice(uprice);
			b.setUstatus(ustatus);

			// ket noi voi mysql va chay function update
			BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
			boolean f = dao.updateEditBook(b);
			
			
			
			if(f) {

				HttpSession session = request.getSession();
		        session.setAttribute("status", "Book edited successfully!");
				
				response.sendRedirect("admin/allbook.jsp");
				
			}else{
			
				response.sendRedirect("admin/allbook.jsp");
			}
			
			
		} catch (Exception e) {
			e.getStackTrace();
			
		}
	
		
	}
	

}
