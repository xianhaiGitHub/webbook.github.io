package com.fuyan.dao.daoimpl;

import java.sql.SQLException;

import com.fuyan.dao.BaseDao;
import com.fuyan.dao.BossDao;

public class BossDaoImpl extends BaseDao implements BossDao{

	@Override
	public void update(int id) {
		String sql="update ID set id=?";
		super.executeUpdate(sql, id);
	}

	@Override
	public int selectId() {
		String sql = "select * from ID";
		super.executeQuery(sql, null);
		int id=0;
		try {
			while(rs.next()){
				id=rs.getInt("id");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return id;
	}

}
