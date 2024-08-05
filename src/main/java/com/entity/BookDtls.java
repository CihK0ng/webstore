package com.entity;

public class BookDtls {

	
	private int bookId ;
	private String ubookname;
	private String uauthor;
	private String uprice;
	private String ubookCategory;
	private String ustatus;
	private String uphoto;
	private String email;
	
	
	public BookDtls() {
		super();
		// TODO Auto-generated constructor stub
	}


	public BookDtls(String ubookname, String uauthor, String uprice, String ubookCategory, String ustatus,
			String uphoto, String email) {
		super();
		this.ubookname = ubookname;
		this.uauthor = uauthor;
		this.uprice = uprice;
		this.ubookCategory = ubookCategory;
		this.ustatus = ustatus;
		this.uphoto = uphoto;
		this.email = email;
	}


	public int getBookId() {
		return bookId;
	}


	public void setBookId(int bookId) {
		this.bookId = bookId;
	}


	public String getUbookname() {
		return ubookname;
	}


	public void setUbookname(String ubookname) {
		this.ubookname = ubookname;
	}


	public String getUauthor() {
		return uauthor;
	}


	public void setUauthor(String uauthor) {
		this.uauthor = uauthor;
	}


	public String getUprice() {
		return uprice;
	}


	public void setUprice(String uprice) {
		this.uprice = uprice;
	}


	public String getUbookCategory() {
		return ubookCategory;
	}


	public void setUbookCategory(String ubookCategory) {
		this.ubookCategory = ubookCategory;
	}


	public String getUstatus() {
		return ustatus;
	}


	public void setUstatus(String ustatus) {
		this.ustatus = ustatus;
	}


	public String getUphoto() {
		return uphoto;
	}


	public void setUphoto(String uphoto) {
		this.uphoto = uphoto;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "BookDtls [bookId=" + bookId + ", ubookname=" + ubookname + ", uauthor=" + uauthor + ", uprice=" + uprice
				+ ", ubookCategory=" + ubookCategory + ", ustatus=" + ustatus + ", uphoto=" + uphoto + ", email="
				+ email + "]";
	}
	
	
}
