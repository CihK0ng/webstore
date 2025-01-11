package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBconnect;
import com.entity.BookDtls;
import com.entity.Cart;


@WebServlet("/Cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
			BookDtls b = dao.getBookById(uid);
			
			Cart c= new Cart();
			c.setBid(bid);
			c.setUserId(uid);
			c.setBookName(b.getUbookname());
			c.setAuthor(b.getUauthor());
			c.setPrice(Double.parseDouble(b.getUprice()));
			c.setTotalPrice(Double.parseDouble(b.getUprice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBconnect.getConn());
			boolean f = dao2.addCart(c);
			
			HttpSession session = req.getSession();
			
			
			if(f) {
				session.setAttribute("addCart", "Book Added to cart");
				resp.sendRedirect("all_newbook.jsp");
				System.out.print("Add Cart Success");
				
			} else {
				session.setAttribute("failed", "Something wrong on server");
				resp.sendRedirect("all_newbook.jsp");
				System.out.print("no Add to Cart ");
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	

}
