package com.shopping.mall;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shopping.mall.Dto.ProductDto;
import com.shopping.mall.Dto.UserDto;
import com.shopping.mall.service.ProductService;


@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private ProductService proS;
	
	@RequestMapping("/main")
	public String main(Model model, ProductDto productdto) {
		
		logger.info("[Main Controller] : main");
		
		return "main";
	}
	
	@ResponseBody
	@RequestMapping(value="/category", method=RequestMethod.POST)
	public Map<String, Boolean> category(HttpSession session, @RequestBody ProductDto productdto) {
		
		logger.info("[Main Controller] : "+productdto.getProductCategory());
		System.out.println("controller : "+productdto.getProductCategory());
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		ProductDto result = proS.productCategory(productdto);
		boolean check = false;
		
		if(result != null) {
			session.setAttribute("prolist", result);
			check = true;
		}
		
		map.put("check", check);
		
		return map;
	}
}


