package com.entity;

public class Cart { 
    private int cid;
    private int bid ; 
    private int userId;
    private String author;
    private String bookName;
    private Double price ;
    private Double totalPrice ;


  public void SetCid(int cid){
     this.cid = cid ; 
  }
  public int GetCid(){
    return cid;
  }
  public void Setbid(int bid){
     this.bid = bid ; 
  }
  public int Getbid(){
    return bid;
  }

  public void setUserId(int userId){
    this.userId = userId
  }
  public int getUserId(){
    return userId;
  }

  public String getBookName(){
    return bookName;
  }

  public void setBookName(){
    this.bookName = bookName;
  }
  public String getauthor(){
    return author;
  }

  public void setAuthor(){
    this.author = author;
  }

  public void Setprice(double price){
     this.price = price; 
  }
  public Double Getprice(){
    return price;
  }

   public void SetTotalPrice(double totalPrice){
     this.totalPrice = totalPrice; 
  }
  public Double GetTotalPrice(){
    return totalPrice;
  }
    

}
