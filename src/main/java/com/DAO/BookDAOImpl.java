package com.DAO;

import java.awt.print.Book;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public class BookDAOImpl implements BookDAO {

	private Connection conn;

	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean addBooks(BookDtls b) {
		boolean f = false;
		try {
			String sql = "insert into book_dtls(bookname, author, price, bookCategory, status, photo, email, pdf) value(?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getUbookname());
			ps.setString(2, b.getUauthor());
			ps.setString(3, b.getUprice());
			ps.setString(4, b.getUbookCategory());
			ps.setString(5, b.getUstatus());
			ps.setString(6, b.getUphoto());
			ps.setString(7, b.getEmail());
		
			
			 // Lưu trữ dữ liệu PDF dưới dạng byte[] (Nếu có)
            if (b.getPdf() != null) {
                ps.setBytes(8, b.getPdf());
            } else {
                ps.setNull(8, java.sql.Types.BLOB); // Nếu không có PDF, đặt là NULL
            }

			int i = ps.executeUpdate();

			if (i > 0) {
				f = true;
			}else {
				 System.out.println("Failed to insert record");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.getStackTrace();
		}

		return f;
	}

	@Override
	public List<BookDtls> getAllBook() {

		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);

			}

		} catch (Exception e) {
			e.getStackTrace();
		}

		return list;
	}

	@Override
	public BookDtls getBookById(int id) {

		BookDtls b = null;
		try {

			String sql = "select * from book_dtls WHERE bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

	@Override
	public boolean updateEditBook(BookDtls b) {
		boolean f = false;

		try {
			String sql = "update book_dtls set bookname=?,author=?,price=?,status=? WHERE bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getUbookname());
			ps.setString(2, b.getUauthor());
			ps.setString(3, b.getUprice());
			ps.setString(4, b.getUstatus());
			ps.setInt(5, b.getBookId());

			int i = ps.executeUpdate();
			if (i > 0) {
				f = true;
			}

		} catch (Exception e) {
			e.getStackTrace();
		}

		return f;
	}

	@Override
	public boolean deleteBooks(int id) {
		boolean f = false;

		try {

			String sql = "delete from book_dtls where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return false;
	}

	@Override
	public List<BookDtls> getNewBook() {

		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls where bookCategory=? and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");

			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}

	@Override
	public List<BookDtls> getRecentBook() {
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls where status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");

			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public List<BookDtls> getOldBook() {
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls where bookCategory=? and and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Old");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public List<BookDtls> getAllOldBook() {
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls where bookCategory=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Old");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public List<BookDtls> getAllNewBook() {
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls where bookCategory=? and status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public List<BookDtls> getAllRecentBook() {
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;

		try {
			String sql = "select * from book_dtls where status=? order by bookId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public BookDtls getPdfBook(int bookId) {
		BookDtls b = null;
		try {

			String sql = "select * from book_dtls WHERE bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(1, bookId);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setUbookname(rs.getString(2));
				b.setUauthor(rs.getString(3));
				b.setUprice(rs.getString(4));
				b.setUbookCategory(rs.getString(5));
				b.setUstatus(rs.getString(6));
				b.setUphoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				b.setPdf(rs.getBytes(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

}
