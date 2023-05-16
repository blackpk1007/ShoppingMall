package com.shopping.mall.Dao;

import com.shopping.mall.Dto.UserDto;

public interface UserDao {
	String NAMESPACE = "spmuser.";
	
	public UserDto userselectOnenum(int userNumber);
	
	public UserDto userselectOneid(String userid);
	
	public UserDto userlogin(UserDto dto);
	
	public int userinsert(UserDto dto);
	
	public int userupdate(UserDto dto);
	
	public UserDto useridfind(UserDto dto);
	
	public UserDto userpwfind(UserDto dto);
	
	
	
	
}
