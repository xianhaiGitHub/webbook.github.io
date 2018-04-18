package com.fuyan.dao.daoimpl;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fuyan.dao.BaseDao;
import com.fuyan.dao.UserDao;
import com.fuyan.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao{
	
	@Override
	public void add(User user) {
		String sql = "insert into users (username ,password,role) values (?,?,?)";
		super.executeUpdate(sql, user.getUsername(),user.getPassword(),user.getRole());
	}
	@Override
	public User selectByCondition(String username, String password ) {
		User user = null;
		try {
			String sql = "select * from users where username = ? and password = ?";
			super.executeQuery(sql, username,password);
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getString("role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public List<User> selectAll() {
		List<User> list = new ArrayList<User>();
		try {
			String sql="select * from users";
			super.executeQuery(sql, null);
			while(rs.next()){
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getString("role"));
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	@Override
	public void delete(int id) {
	String sql="delete from users where id = ?";
	super.executeUpdate(sql, id);
	}
	@Override
	public void update(User user) {
		String sql="update users set username=?,password=? ,role = ? where id = ? ";
		super.executeUpdate(sql, user.getUsername(),user.getPassword(),user.getRole(),user.getId());
	}
	@Override
	public User selectOne(int id) {
		User user = null;
		try {
			String sql = "select * from users where id = ?";
			super.executeQuery(sql, id);
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getString("role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

}
