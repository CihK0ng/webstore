package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImpl implements UserDAO {

	

	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {
		boolean f = false;
	    try {
	      String sql = "insert into users(uname, upwd, uemail, umobile) values(?,?,?,?)";
	      PreparedStatement ps = conn.prepareStatement(sql);
	      ps.setString(1, us.getUname());
	      ps.setString(2, us.getUpwd());
	      ps.setString(3, us.getUemail());
	      ps.setString(4, us.getUmobile());
	      
	      int i = ps.executeUpdate();
	      if(i == 1 ) {
	    	  f = true ;  
	      }
	    } catch (Exception e){
	      e.printStackTrace();
	    }
	    return false;
	
		
	}
	
	
	@Override
	public User login(String email, String password) {
		User us= null;
		
		
	    try {
	    	PreparedStatement ps = conn.prepareStatement("select * from users where uemail = ? and upwd = ?");
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet result = ps.executeQuery();
			while(result.next()) {
				us = new User();
				us.setId(result.getInt(1));
				us.setUname(result.getString(2));
				us.setUpwd(result.getString(3));
				us.setUemail(result.getString(4));
				us.setUmobile(result.getString(5));
				us.setUaddress(result.getString(6));
				us.setUlandmark(result.getString(7));
				us.setUcity(result.getString(8));
				us.setUstate(result.getString(9));
				us.setUpincode(result.getString(10));
			}
			
	      
	    } catch (Exception e){
	      e.printStackTrace();
	    } 
		
		return us;
	}
	
	
}
