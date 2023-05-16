package com.shopping.mall.Dto;

import java.util.Date;

public class OrderlistDto {
	private Long orderlistNumber;
	private String orderlistID;
	private String orderlistName;
	private String orderlistColor;
	private String orderlistSize;
	private int orderlistCount;
	private int orderlistPrice;
	private int orderlistPriceSum;
	private Date orderlistDate;
	private String orderlistState;

	public OrderlistDto() {
		super();
	}
	
	public OrderlistDto(Long orderlistNumber, String orderlistID, String orderlistName, String orderlistColor,
			String orderlistSize, int orderlistCount, int orderlistPrice, int orderlistPriceSum, Date orderlistDate,
			String orderlistState) {
		super();
		this.orderlistNumber = orderlistNumber;
		this.orderlistID = orderlistID;
		this.orderlistName = orderlistName;
		this.orderlistColor = orderlistColor;
		this.orderlistSize = orderlistSize;
		this.orderlistCount = orderlistCount;
		this.orderlistPrice = orderlistPrice;
		this.orderlistPriceSum = orderlistPriceSum;
		this.orderlistDate = orderlistDate;
		this.orderlistState = orderlistState;
	}
	
	public Long getOrderlistNumber() {
		return orderlistNumber;
	}
	public void setOrderlistNumber(Long orderlistNumber) {
		this.orderlistNumber = orderlistNumber;
	}
	public String getOrderlistID() {
		return orderlistID;
	}
	public void setOrderlistID(String orderlistID) {
		this.orderlistID = orderlistID;
	}
	public String getOrderlistName() {
		return orderlistName;
	}
	public void setOrderlistName(String orderlistName) {
		this.orderlistName = orderlistName;
	}
	public String getOrderlistColor() {
		return orderlistColor;
	}
	public void setOrderlistColor(String orderlistColor) {
		this.orderlistColor = orderlistColor;
	}
	public String getOrderlistSize() {
		return orderlistSize;
	}
	public void setOrderlistSize(String orderlistSize) {
		this.orderlistSize = orderlistSize;
	}
	public int getOrderlistCount() {
		return orderlistCount;
	}
	public void setOrderlistCount(int orderlistCount) {
		this.orderlistCount = orderlistCount;
	}
	public int getOrderlistPrice() {
		return orderlistPrice;
	}
	public void setOrderlistPrice(int orderlistPrice) {
		this.orderlistPrice = orderlistPrice;
	}
	public int getOrderlistPriceSum() {
		return orderlistPriceSum;
	}
	public void setOrderlistPriceSum(int orderlistPriceSum) {
		this.orderlistPriceSum = orderlistPriceSum;
	}
	public Date getOrderlistDate() {
		return orderlistDate;
	}
	public void setOrderlistDate(Date orderlistDate) {
		this.orderlistDate = orderlistDate;
	}
	public String getOrderlistState() {
		return orderlistState;
	}
	public void setOrderlistState(String orderlistState) {
		this.orderlistState = orderlistState;
	}
	
	
}
