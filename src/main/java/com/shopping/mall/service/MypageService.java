package com.shopping.mall.service;

import java.util.List;

import com.shopping.mall.Dto.QnaDto;

public interface MypageService {
	
	public List<QnaDto> qnaselectList();
	
	public QnaDto qnaselectOne(int qnanum);
	
	public int qnainsert(QnaDto dto);
	
	public int qnaupdate(QnaDto dto);
	
	public List<QnaDto> qnasearchList(String keyword);
	
	public List<QnaDto> qnaselectcategory(String qnacategory);
}
