package com.shopping.mall.Dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.Dto.CartDto;
import com.shopping.mall.Dto.OrderlistDto;
import com.shopping.mall.Dto.WishDto;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<CartDto> cartselect(String userid) {

		List<CartDto> result = new ArrayList<>();

		try {
			result = sqlSession.selectList(NAMESPACE + "cartselect", userid);
		} catch (Exception e) {
			System.out.println("[error] : cartselect");
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<WishDto> wishselect(String userid) {
		
		List<WishDto> result = new ArrayList<>();

		try {
			result = sqlSession.selectList(NAMESPACE + "wishselect", userid);
		} catch (Exception e) {
			System.out.println("[error] : wishselect");
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<OrderlistDto> orderlistselect(String userid) {
		
		List<OrderlistDto> result = new ArrayList<>();

		try {
			result = sqlSession.selectList(NAMESPACE + "orderlistselect", userid);
		} catch (Exception e) {
			System.out.println("[error] : orderlistselect");
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public OrderlistDto orderlistselectdetailOne(OrderlistDto dto) {
		OrderlistDto result = new OrderlistDto();
		
		try {
			result = sqlSession.selectOne(NAMESPACE+"orderlistselectOne", dto);
		} catch (Exception e) {
			System.out.println("[error] : orderlistselectOne");
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public List<OrderlistDto> orderlistselectdetail(OrderlistDto dto) {
		
		List<OrderlistDto> result = new ArrayList<>();
		
		try {
			result = sqlSession.selectList(NAMESPACE+"orderlistselectdetail", dto);
		}catch (Exception e) {
			System.out.println("[error] : orderlistselectdetail");
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public int orderlisttest(OrderlistDto dto) {
		
		int result = 0;
		
		try {
			result = sqlSession.insert(NAMESPACE+"orderlisttest", dto);
		} catch (Exception e) {
			System.out.println("[error] : orderlisttest");
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	   public int cartdelete(String cartNumbers) {
	      int result = 0;
	      
	      try {
	         result = sqlSession.delete(NAMESPACE+"cartdelete", Integer.parseInt(cartNumbers));
	      } catch (Exception e) {
	         System.out.println("[error] : cartDelete");
	         e.printStackTrace();
	      }
	      
	      return result;
	   }

}
