package com.shopping.mall.Dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.Dto.QnaDto;

@Repository
public class MypageDaoImpl implements MypageDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<QnaDto> qnaselectList() {
		
		List<QnaDto> result = new ArrayList<QnaDto>();
		
		try {
			result = sqlSession.selectList(NAMESPACE+"qnaselectList");
		}catch (Exception e) {
			System.out.println("[error]: qnaselect list");
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public QnaDto qnaselectOne(int qnanum) {
		
		QnaDto dto = new QnaDto();
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"qnaselectOne", qnanum);
		} catch (Exception e) {
			System.out.println("[error]: qnaselectOne");
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int qnainsert(QnaDto dto) {
		
		int result = 0;
		
		try {
			result = sqlSession.insert(NAMESPACE+"qnainsert", dto);
		}catch (Exception e) {
			System.out.println("[error]: qnainsert");
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int qnaupdate(QnaDto dto) {
		
		int result = 0;
		
		try {
			result = sqlSession.update(NAMESPACE+"qnaupdate", dto);
		} catch (Exception e) {
			System.out.println("[error]: qnaupdate");
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<QnaDto> qnasearchList(String keyword) {
		
		List<QnaDto> result = new ArrayList<QnaDto>();
		
		try {
			result = sqlSession.selectList(NAMESPACE+"qnasearchList", keyword);
		}catch (Exception e) {
			System.out.println("[error]: qnasearch list");
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public List<QnaDto> qnaselectcategory(String qnacategory) {
		
		List<QnaDto> result = new ArrayList<QnaDto>();
		
		try {
			result = sqlSession.selectList(NAMESPACE+"qnaselectcategory", qnacategory);
		} catch (Exception e) {
			System.out.println("[error]: qnaselectcategory");
			e.printStackTrace();
		}
		
		return result;
	}

}
