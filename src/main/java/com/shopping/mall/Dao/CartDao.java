package com.shopping.mall.Dao;

import java.util.List;

import com.shopping.mall.Dto.CartDto;
import com.shopping.mall.Dto.OrderlistDto;
import com.shopping.mall.Dto.WishDto;

public interface CartDao {
	
	String NAMESPACE = "spmcart.";
	
	public List<CartDto> cartselect(String userid);
	
	public List<WishDto> wishselect(String userid);
	
	public List<OrderlistDto> orderlistselect(String userid);
	
	public OrderlistDto orderlistselectdetailOne(OrderlistDto dto);
	
	public List<OrderlistDto> orderlistselectdetail(OrderlistDto dto);
	
	public int orderlisttest(OrderlistDto dto);
	
	public int cartdelete(String cartNumbers);

}
