package com.shopping.mall.Dto;

import java.util.Date;

public class QnaDto {
	private int qnanum;
	private String qnawriterid;
	private String qnacategory;
	private String qnatitle;
	private Date qnadate;
	private String qnacontent;
	
	public QnaDto() {
		super();
	}
	public QnaDto(int qnanum, String qnawriterid, String qnacategory, String qnatitle, Date qnadate,
			String qnacontent) {
		super();
		this.qnanum = qnanum;
		this.qnawriterid = qnawriterid;
		this.qnacategory = qnacategory;
		this.qnatitle = qnatitle;
		this.qnadate = qnadate;
		this.qnacontent = qnacontent;
	}
	
	public int getQnanum() {
		return qnanum;
	}
	public void setQnanum(int qnanum) {
		this.qnanum = qnanum;
	}
	public String getQnawriterid() {
		return qnawriterid;
	}
	public void setQnawriterid(String qnawriterid) {
		this.qnawriterid = qnawriterid;
	}
	public String getQnacategory() {
		return qnacategory;
	}
	public void setQnacategory(String qnacategory) {
		this.qnacategory = qnacategory;
	}
	public String getQnatitle() {
		return qnatitle;
	}
	public void setQnatitle(String qnatitle) {
		this.qnatitle = qnatitle;
	}
	public Date getQnadate() {
		return qnadate;
	}
	public void setQnadate(Date qnadate) {
		this.qnadate = qnadate;
	}
	public String getQnacontent() {
		return qnacontent;
	}
	public void setQnacontent(String qnacontent) {
		this.qnacontent = qnacontent;
	}
}
