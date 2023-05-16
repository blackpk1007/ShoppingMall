package com.shopping.mall.service;

import com.shopping.mall.Dto.UserDto;

public interface UserService {
	
	public UserDto userselectOnenum(int userNumber);
	
	public UserDto userselectOneid(String userID);
	
	public UserDto userlogin(UserDto dto);
	
	public int userInsert(UserDto dto);
	
	public int userUpdate(UserDto dto);
	
	public UserDto useridfind(UserDto dto);
	
	public UserDto userpwfind(UserDto dto);
	
}
