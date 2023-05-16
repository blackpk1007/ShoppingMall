package com.shopping.mall.Dto;

public class CartDto {
	private int cartNumber;
	private String cartID;
	private String cartTitle;
	private int cartPrice;
	private String cartColor;
	private String cartSize;
	private int cartCount;
	private int cartPriceSum;
	public CartDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartDto(int cartNumber, String cartID, String cartTitle, int cartPrice, String cartColor, String cartSize,
			int cartCount, int cartPriceSum) {
		super();
		this.cartNumber = cartNumber;
		this.cartID = cartID;
		this.cartTitle = cartTitle;
		this.cartPrice = cartPrice;
		this.cartColor = cartColor;
		this.cartSize = cartSize;
		this.cartCount = cartCount;
		this.cartPriceSum = cartPriceSum;
	}
	public int getCartNumber() {
		return cartNumber;
	}
	public void setCartNumber(int cartNumber) {
		this.cartNumber = cartNumber;
	}
	public String getCartID() {
		return cartID;
	}
	public void setCartID(String cartID) {
		this.cartID = cartID;
	}
	public String getCartTitle() {
		return cartTitle;
	}
	public void setCartTitle(String cartTitle) {
		this.cartTitle = cartTitle;
	}
	public int getCartPrice() {
		return cartPrice;
	}
	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}
	public String getCartColor() {
		return cartColor;
	}
	public void setCartColor(String cartColor) {
		this.cartColor = cartColor;
	}
	public String getCartSize() {
		return cartSize;
	}
	public void setCartSize(String cartSize) {
		this.cartSize = cartSize;
	}
	public int getCartCount() {
		return cartCount;
	}
	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}
	public int getCartPriceSum() {
		return cartPriceSum;
	}
	public void setCartPriceSum(int cartPriceSum) {
		this.cartPriceSum = cartPriceSum;
	}
	
	
}
