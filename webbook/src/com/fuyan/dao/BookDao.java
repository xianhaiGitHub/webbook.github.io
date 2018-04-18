package com.fuyan.dao;

import java.util.List;

import com.fuyan.entity.Book;

public interface BookDao {
	public void add(Book book);
	public void delete(int id);
	public Book selectByCondition(String bookname,String bookauthor);
	public List<Book> showAll();
	public void updateBook(Book book);
	public Book selectOne(int id);
	public List<Book> selectBybookname(String bookname);
}
