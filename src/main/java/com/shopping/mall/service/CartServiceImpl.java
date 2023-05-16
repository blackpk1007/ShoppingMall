package com.shopping.mall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mall.Dao.CartDao;
import com.shopping.mall.Dto.CartDto;
import com.shopping.mall.Dto.OrderlistDto;
import com.shopping.mall.Dto.WishDto;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDao cartdao;
	
	@Override
	public List<CartDto> cartselect(String userid) {
		
		return cartdao.cartselect(userid);
	}

	@Override
	public List<WishDto> wishselect(String userid) {
		
		return cartdao.wishselect(userid);		
	}

	@Override
	public List<OrderlistDto> orderlistselect(String userid) {
		
		return cartdao.orderlistselect(userid);
	}

	@Override
	public List<OrderlistDto> orderlistselectDetail(OrderlistDto dto) {
		
		return cartdao.orderlistselectdetail(dto);
	}

	@Override
	public OrderlistDto orderlistselectdetailOne(OrderlistDto dto) {
		
		return cartdao.orderlistselectdetailOne(dto);
	}

	@Override
	public int orderlisttest(OrderlistDto dto) {
		
		return cartdao.orderlisttest(dto);
	}
	@Override //장바구니 삭제
	   public int cartdelete(String cartNumbers) {
	      return cartdao.cartdelete(cartNumbers);
	   }

}
