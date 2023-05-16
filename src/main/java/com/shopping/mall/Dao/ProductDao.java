package com.shopping.mall.Dao;

import java.util.List;

import com.shopping.mall.Dto.ProductDto;

public interface ProductDao {
	
	String NAMESPACE = "spmproduct.";
	
	public ProductDto productDetail(ProductDto productdto);
	
	public ProductDto productCategory(ProductDto productdto);
}
