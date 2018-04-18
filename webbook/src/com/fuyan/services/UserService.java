package com.fuyan.services;



import java.util.List;

import com.fuyan.entity.Book;
import com.fuyan.entity.User;

public interface UserService {
	public void regist(User user);
	
	public User login(String username,String password);
	
	public List<User> selectAll();
	
	public void deleteUser(int id);
	
	public void updateUsers(User user);
	
	public User selectOne(int id);
	public User selectByCondition(String username,String password);
	
	
}
