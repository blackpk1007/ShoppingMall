package com.shopping.mall.Dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.Dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ProductDto productDetail(ProductDto productdto) {
		ProductDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"productDetail", productdto);
			System.out.println("res : "+res);
		} catch (Exception e) {
			System.out.println("[error] : productdetail");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public ProductDto productCategory(ProductDto productdto) {
		
		ProductDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"productCategory", productdto);
		} catch (Exception e) {
			System.out.println("[error] : productcategory");
			e.printStackTrace();
		}
		return dto;
	}
	
}
