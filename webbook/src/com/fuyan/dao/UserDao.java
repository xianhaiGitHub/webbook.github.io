package com.fuyan.dao;



import java.util.List;

import com.fuyan.entity.User;

public interface UserDao {
	public void add(User user);
	public User selectByCondition(String username,String password);
	public List<User> selectAll();
	public void delete(int id);
	public void update(User user);
	public User selectOne(int id);
}
