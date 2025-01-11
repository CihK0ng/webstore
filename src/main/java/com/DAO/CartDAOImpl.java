package com.DAO;

import com.entity.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartDAOImpl implements CartDAO{

	  private Connection conn;
	  
	  public CartDAOImpl(Connection conn){
	    this.conn = conn;
	    
	  }

	  
	  public boolean addCart(Cart c){
	    boolean f = false;
	    try {
	      String sql = "insert into cart(bid,uid,bokName,author,price,total_Price) value(?,?,?,?,?,?)";
	      PreparedStatement ps = conn.prepareStatement(sql);
	      ps.setInt(1, c.getBid());
	      ps.setInt(2, c.getUserId());
	      ps.setString(3, c.getBookName());
	      ps.setString(4, c.getAuthor());
	      ps.setDouble(5, c.getTotalPrice());
	      
	      int i = ps.executeUpdate();
	      if(i == 1 ) {
	    	  f = true ;  
	      }
	    } catch (Exception e){
	      e.printStackTrace();
	    }
	    return false;
	  }
}
