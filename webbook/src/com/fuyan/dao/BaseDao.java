package com.fuyan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private final String URL = "jdbc:mysql://localhost:3306/fuyan";
	private final String USER = "root";
	private final String PWD = "root";
	
	protected Connection conn = null;
	protected PreparedStatement pstmt = null;
	protected ResultSet rs = null;
	
	
	static{
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public Connection getConnection(){
		try {
			conn = DriverManager.getConnection(URL,USER,PWD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void executeUpdate(String sql,Object...params){
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			setParams(params);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void executeQuery(String sql,Object...params){
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			setParams(params);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void setParams(Object...params){
		
		try {
			if(params == null || params.length == 0){
				
			}else{
				for(int i = 0; i< params.length;i++){
					pstmt.setObject((i+1), params[i]);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
