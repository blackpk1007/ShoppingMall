package com.shopping.mall;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.mall.Dto.ProductDto;
import com.shopping.mall.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductService proS;
	
	@RequestMapping("/productdetail")
	public String productdetail(Model model, ProductDto productdto) {
		
		logger.info("[Product Controller] : detail");
		
		System.out.println("productdtocate : "+productdto.getProductCategory());
		System.out.println("productdtonum : "+productdto.getProductNumber());
		model.addAttribute("productdto", proS.productDetail(productdto));
		
		System.out.println("productdto : "+proS.productDetail(productdto));
		return "productdetail";
	}
	
	@RequestMapping("/productorder")
	public String productorder(Model model, String userid) {
		
		logger.info("[Product Controller] : productorder");
		
		return "productbuy";
	}
}
