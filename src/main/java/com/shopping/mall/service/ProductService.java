package com.shopping.mall.service;

import java.util.List;

import com.shopping.mall.Dto.ProductDto;

public interface ProductService {
	
	public ProductDto productDetail(ProductDto productdto);
	
	public ProductDto productCategory(ProductDto productdto);
}
