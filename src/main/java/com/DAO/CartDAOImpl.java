package com.DAO;

import com.entity.Cart;

public class CartDAOImpl implements CartDAO{

  private Connection conn;
  public CartDAOImpl(Connection conn){
    this.conn = conn;
    
  }


  


  
  public boolean addCart(Cart c){
    boolean f = false;
    try {
      String sql = "insert into cart()";
      
    } catch ( Exception c){
      c.printStackTrace();
    
    }
    
    
    
    
    return false;
  }

  


}
