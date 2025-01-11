package com.entity;

public class User {

	private int id ;
	private String uname = null;
	private String upwd = null;
	private String uemail = null;
	private String umobile = null; 
	private String uaddress = null;
	private String ucity = null;
	private String ulandmark = null;
	private String ustate  = null;
	private String upincode = null;
	
	
	
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUmobile() {
		return umobile;
	}
	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUcity() {
		return ucity;
	}
	public void setUcity(String ucity) {
		this.ucity = ucity;
	}
	public String getUlandmark() {
		return ulandmark;
	}
	public void setUlandmark(String ulandmark) {
		this.ulandmark = ulandmark;
	}
	public String getUstate() {
		return ustate;
	}
	public void setUstate(String ustate) {
		this.ustate = ustate;
	}
	public String getUpincode() {
		return upincode;
	}
	public void setUpincode(String upincode) {
		this.upincode = upincode;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", upwd=" + upwd + ", uemail=" + uemail + ", umobile=" + umobile
				+ ", uaddress=" + uaddress + ", ucity=" + ucity + ", ulandmark=" + ulandmark + ", ustate=" + ustate
				+ ", upincode=" + upincode + "]";
	}
	

	
	
}
