package com.fuyan.dao.daoimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fuyan.dao.BaseDao;
import com.fuyan.dao.BookDao;
import com.fuyan.entity.Book;

public class BookDaoImpl  extends BaseDao implements BookDao{

	@Override
	public void add(Book book) {
		String sql="insert into book (bookname,bookprice,bookauthor,booknumber) values (?,?,?,?)";
		super.executeUpdate(sql, book.getBookname(),book.getBookprice(),book.getBookauthor(),book.getBooknumber());
	}
	@Override
	public void delete(int id) {
		String sql="delete from book where id=?";
		super.executeUpdate(sql, id);
	}
	@Override
	public Book selectByCondition(String bookname, String bookauthor) {
		Book book = null;
		try {
			String sql = "select * from book where bookname = ? and bookauthor=? ";
			super.executeQuery(sql, bookname,bookauthor);
			while(rs.next()){
				book = new Book();
				book.setId(rs.getInt("id"));
				book.setBookname(rs.getString("bookname"));
				book.setBookprice(rs.getDouble("bookprice"));
				book.setBookauthor(rs.getString("bookauthor"));
				book.setBooknumber(rs.getInt("booknumber"));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return book;
	}
	@Override
	public List<Book> showAll() {
		List<Book> list = new ArrayList<Book>();
		String sql ="select * from book";
		super.executeQuery(sql, null);
		try {
			while(rs.next()){
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setBookname(rs.getString("bookname"));
				book.setBookprice(rs.getDouble("bookprice"));
				book.setBookauthor(rs.getString("bookauthor"));
				book.setBooknumber(rs.getInt("booknumber"));
				list.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public void updateBook(Book book) {
		String sql="update book set bookname = ?, bookprice = ?, bookauthor = ? , booknumber = ? where id = ? ";
		super.executeUpdate(sql, book.getBookname(),book.getBookprice(),book.getBookauthor(),book.getBooknumber(),book.getId());
	}

	@Override
	public Book selectOne(int id) {
		Book book =null;
		try {
			String sql = "select * from book where id = ?";
			super.executeQuery(sql, id);
			while(rs.next()){
				book = new Book();
				book.setId(rs.getInt("id"));
				book.setBookname(rs.getString("bookname"));
				book.setBookprice(rs.getDouble("bookprice"));
				book.setBookauthor(rs.getString("bookauthor"));
				book.setBooknumber(rs.getInt("booknumber"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return book;
	}
	@Override
	public List<Book> selectBybookname(String bookname) {
		List<Book> list = new ArrayList<Book>();
		Book book = null;
		String sql= "select * from book where bookname  like '%' ? '%'";
		super.executeQuery(sql, bookname);
		try {
			while(rs.next()){
				book = new Book();
				book.setId(rs.getInt("id"));
				book.setBookname(rs.getString("bookname"));
				book.setBookprice(rs.getDouble("bookprice"));
				book.setBookauthor(rs.getString("bookauthor"));
				book.setBooknumber(rs.getInt("booknumber"));
				list.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
