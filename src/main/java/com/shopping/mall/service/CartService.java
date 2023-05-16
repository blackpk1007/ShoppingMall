package com.shopping.mall.service;

import java.util.List;

import com.shopping.mall.Dto.CartDto;
import com.shopping.mall.Dto.OrderlistDto;
import com.shopping.mall.Dto.WishDto;

public interface CartService {
	
	public List<CartDto> cartselect(String userid);
	
	public List<WishDto> wishselect(String userid);
	
	public List<OrderlistDto> orderlistselect(String userid);
	
	public List<OrderlistDto> orderlistselectDetail(OrderlistDto dto);
	
	public OrderlistDto orderlistselectdetailOne(OrderlistDto dto);
	
	public int orderlisttest(OrderlistDto dto);
	public int cartdelete(String cartNumbers);

}
