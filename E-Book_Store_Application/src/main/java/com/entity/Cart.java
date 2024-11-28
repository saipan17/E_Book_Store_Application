package com.entity;

public class Cart {

	private int cid;
	private int bid;
	private int uid;
	private String bookName;
	private String author;
	private String price;
	private String totalPrice;

	public Cart(int cid, int bid, int uid, String bookName, String price, String totalPrice, String author) {
		super();
		this.cid = cid;
		this.bid = bid;
		this.uid = uid;
		this.bookName = bookName;
		this.price = price;
		this.totalPrice = totalPrice;
		this.author = author;
	}

	public Cart() {
		super();
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}
