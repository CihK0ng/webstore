package com.user.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BookDAOImpl;
import com.DB.DBconnect;
import com.entity.BookDtls;

@WebServlet("/viewPdf")
public class ViewPDFServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Lấy bookId từ request
		String bookId = req.getParameter("bookId");

		// Kiểm tra nếu bookId không hợp lệ
		if (bookId == null || bookId.isEmpty()) {
			resp.setContentType("text/plain");
			resp.getWriter().write("No book ID provided.");
			return;
		}

		// Chuyển bookId sang kiểu int
		int id;
		try {
			id = Integer.parseInt(bookId);
		} catch (NumberFormatException e) {
			resp.setContentType("text/plain");
			resp.getWriter().write("Invalid book ID format.");
			return;
		}

		// Truy vấn cơ sở dữ liệu để lấy dữ liệu PDF
		BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
		BookDtls b = dao.getPdfBook(id);

		// Lấy dữ liệu PDF từ đối tượng BookDtls
		byte[] pdfData = b.getPdf();

		if (pdfData != null && pdfData.length > 0) {
			resp.setContentType("application/pdf");
			resp.setContentLength(pdfData.length);
			resp.getOutputStream().write(pdfData);
		} else {
			String defaultPdfPath = "D:/Project/eclipse-workspace/webstore/src/main/webapp/baoca.pdf";
	        java.nio.file.Path path = java.nio.file.Paths.get(defaultPdfPath);

	        if (java.nio.file.Files.exists(path)) {
	            resp.setContentType("application/pdf");
	            byte[] defaultPdfData = java.nio.file.Files.readAllBytes(path);
	            resp.setContentLength(defaultPdfData.length);
	            resp.getOutputStream().write(defaultPdfData);
	        } else {
	            resp.setContentType("text/plain");
	            resp.getWriter().write("Default PDF file not found.");
	        }
		}
	}
}
