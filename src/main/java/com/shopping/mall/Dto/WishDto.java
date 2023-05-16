package com.shopping.mall.Dto;

public class WishDto {
	
	private String wishID;
	private String wishName;
	private int wishPrice;
	private String wishColor;
	private String wishSize;

	public WishDto() {
		super();
	}

	public WishDto(String wishID, String wishName, int wishPrice, String wishColor, String wishSize) {
		super();
		this.wishID = wishID;
		this.wishName = wishName;
		this.wishPrice = wishPrice;
		this.wishColor = wishColor;
		this.wishSize = wishSize;
	}
	
	public String getWishID() {
		return wishID;
	}
	public void setWishID(String wishID) {
		this.wishID = wishID;
	}
	public String getWishName() {
		return wishName;
	}
	public void setWishName(String wishName) {
		this.wishName = wishName;
	}
	public int getWishPrice() {
		return wishPrice;
	}
	public void setWishPrice(int wishPrice) {
		this.wishPrice = wishPrice;
	}
	public String getWishColor() {
		return wishColor;
	}
	public void setWishColor(String wishColor) {
		this.wishColor = wishColor;
	}
	public String getWishSize() {
		return wishSize;
	}
	public void setWishSize(String wishSize) {
		this.wishSize = wishSize;
	}
	
	
}
