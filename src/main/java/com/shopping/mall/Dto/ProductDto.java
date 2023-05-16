package com.shopping.mall.Dto;

public class ProductDto {

	private int productNumber;
	private String productName;
	private int productPrice;
	private String productContent;
	private String productCategory;
	private String productColor;
	private String productSize;
	private int productCount;

	public ProductDto() {
		super();
	}
	
	public ProductDto(int productNumber, String productName, int productPrice, String productContent,
			String productCategory, String productColor, String productSize, int productCount) {
		super();
		this.productNumber = productNumber;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productContent = productContent;
		this.productCategory = productCategory;
		this.productColor = productColor;
		this.productSize = productSize;
		this.productCount = productCount;
	}
	
	public int getProductNumber() {
		return productNumber;
	}
	public void setProductNumber(int productNumber) {
		this.productNumber = productNumber;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductContent() {
		return productContent;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductColor() {
		return productColor;
	}
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	
}
