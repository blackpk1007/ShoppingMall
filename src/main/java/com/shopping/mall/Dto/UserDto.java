package com.shopping.mall.Dto;

import java.util.Date;

public class UserDto {
	
	private int userNumber;
	private String userID;
	private String userPW;
	private String userName;
	private String userPhone;
	private String userAddrMain;
	private String userAddrSub;
	private String userEmail;
	private Date userDate;
	private String userGrade;
	private int userPriceSum;

	public UserDto() {
		super();
	}
	
	public UserDto(int userNumber, String userID, String userPW, String userName, String userPhone, String userAddrMain,
			String userAddrSub, String userEmail, Date userDate, String userGrade, int userPriceSum) {
		super();
		this.userNumber = userNumber;
		this.userID = userID;
		this.userPW = userPW;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userAddrMain = userAddrMain;
		this.userAddrSub = userAddrSub;
		this.userEmail = userEmail;
		this.userDate = userDate;
		this.userGrade = userGrade;
		this.userPriceSum = userPriceSum;
	}
	
	public int getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddrMain() {
		return userAddrMain;
	}
	public void setUserAddrMain(String userAddrMain) {
		this.userAddrMain = userAddrMain;
	}
	public String getUserAddrSub() {
		return userAddrSub;
	}
	public void setUserAddrSub(String userAddrSub) {
		this.userAddrSub = userAddrSub;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getUserDate() {
		return userDate;
	}
	public void setUserDate(Date userDate) {
		this.userDate = userDate;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
	public int getUserPriceSum() {
		return userPriceSum;
	}
	public void setUserPriceSum(int userPriceSum) {
		this.userPriceSum = userPriceSum;
	}
	
}
