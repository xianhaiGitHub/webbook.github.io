package com.fuyan.services.servicesimpl;

import java.util.List;

import com.fuyan.dao.daoimpl.UserDaoImpl;
import com.fuyan.entity.User;
import com.fuyan.services.UserService;

public class UserServicesImpl  implements UserService{
	
	UserDaoImpl userdaoimpl = new UserDaoImpl();
	@Override
	public void regist(User user) {
		userdaoimpl.add(user);
	}
	@Override
	public User login(String username, String password) {
		return  userdaoimpl.selectByCondition(username, password);
	}
	@Override
	public List<User> selectAll() {
	
		return userdaoimpl.selectAll();
	}
	@Override
	public void deleteUser(int id) {
		userdaoimpl.delete(id);
	}
	@Override
	public void updateUsers(User user) {
		userdaoimpl.update(user);
	}
	@Override
	public User selectOne(int id) {
		return userdaoimpl.selectOne(id);
		
	}
	@Override
	public User selectByCondition(String username, String password) {
		return  userdaoimpl.selectByCondition(username, password);
	}
}
