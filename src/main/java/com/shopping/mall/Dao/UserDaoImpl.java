package com.shopping.mall.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.mall.Dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public UserDto userselectOnenum(int userNumber) {
		
		UserDto dto = new UserDto();
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"userselectOnenum", userNumber);			
		}catch(Exception e) {
			System.out.println("[error] : userselectonenum");
			e.printStackTrace();
		}
		
		return dto;
	}
	
	@Override
	public UserDto userselectOneid(String userid) {
		
		UserDto dto = new UserDto();
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"userselectOneid", userid);
			System.out.println(dto);
		}catch(Exception e) {
			System.out.println("[error] : userselectoneid");
			e.printStackTrace();
		}
		
		return dto;
	}	
	
	@Override
	public UserDto userlogin(UserDto dto) {
		UserDto result = null;
		
		try {
			result = sqlSession.selectOne(NAMESPACE+"userlogin", dto);
		} catch (Exception e) {
			System.out.println("[error] : userlogin");
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int userinsert(UserDto dto) {
		
		int result = 0;
		
		try {
			result = sqlSession.insert(NAMESPACE+"userinsert", dto);
		} catch (Exception e) {
			System.out.println("[error] : userinsert"); 
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public int userupdate(UserDto dto) {
		
		int result = 0;
		
		try {
			result = sqlSession.update(NAMESPACE+"userupdate", dto);
		} catch (Exception e) {
			System.out.println("[error] : userupdate");
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public UserDto useridfind(UserDto dto) {
		UserDto res = null;
		System.out.println("dao name : "+dto.getUserName());
		System.out.println("dao email : "+dto.getUserEmail());
		try {
			res = sqlSession.selectOne(NAMESPACE+"useridfind", dto);
			System.out.println("dao res : "+res);
		}catch(Exception e) {
			System.out.println("[error] : useridfind");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public UserDto userpwfind(UserDto dto) {
		UserDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"userpwfind",dto);
		} catch (Exception e) {
			System.out.println("[error] : userpwfind");
			e.printStackTrace();
		} 
		return res;
	}
}
