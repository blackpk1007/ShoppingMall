package com.shopping.mall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.mall.Dao.UserDao;
import com.shopping.mall.Dto.UserDto;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userdao;
	
	@Override
	public UserDto userselectOnenum(int userNumber) {
		
		return userdao.userselectOnenum(userNumber);
	}
	
	@Override
	public UserDto userselectOneid(String userID) {
		
		return userdao.userselectOneid(userID);
	}
	
	@Override
	public UserDto userlogin(UserDto dto) {
		
		return userdao.userlogin(dto);
	}
	
	@Override
	public int userInsert(UserDto dto) {
		
		return userdao.userinsert(dto);
	}
	
	@Override
	public int userUpdate(UserDto dto) {
		
		return userdao.userupdate(dto);
	}
	
	@Override
	public UserDto useridfind(UserDto dto) {
		
		return userdao.useridfind(dto);
	}

	@Override
	public UserDto userpwfind(UserDto dto) {
		
		return userdao.userpwfind(dto);
	}
	
	
}
