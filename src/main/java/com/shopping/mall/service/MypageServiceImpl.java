package com.shopping.mall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mall.Dao.MypageDao;
import com.shopping.mall.Dto.QnaDto;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDao mypagedao;
	
	@Override
	public List<QnaDto> qnaselectList() {
		
		return mypagedao.qnaselectList();
	}

	@Override
	public QnaDto qnaselectOne(int qnanum) {
		
		return mypagedao.qnaselectOne(qnanum);
	}

	@Override
	public int qnainsert(QnaDto dto) {
		
		return mypagedao.qnainsert(dto);
	}

	@Override
	public int qnaupdate(QnaDto dto) {
		
		return mypagedao.qnaupdate(dto);
	}

	@Override
	public List<QnaDto> qnasearchList(String keyword) {
		
		return mypagedao.qnasearchList(keyword);
	}

	@Override
	public List<QnaDto> qnaselectcategory(String qnacategory) {
		
		return mypagedao.qnaselectcategory(qnacategory);
	}
	
}
