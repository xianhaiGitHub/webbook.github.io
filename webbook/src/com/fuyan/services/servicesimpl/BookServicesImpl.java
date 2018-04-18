package com.fuyan.services.servicesimpl;

import java.util.List;

import com.fuyan.dao.daoimpl.BookDaoImpl;
import com.fuyan.entity.Book;
import com.fuyan.services.BookService;

public class BookServicesImpl implements BookService {
	BookDaoImpl bookdaoimpl = new BookDaoImpl();
	@Override
	public void add(Book book) {
		bookdaoimpl.add(book);
	}
	@Override
	public void delete(int id) {
		bookdaoimpl.delete(id);
	}
	@Override
	public Book selectByCondition(String bookname, String bookauthor) {
		return bookdaoimpl.selectByCondition(bookname, bookauthor);
	}
	@Override
	public List<Book> showAll() {
		return bookdaoimpl.showAll();
	}
	@Override
	public void updateBook(Book book) {
		bookdaoimpl.updateBook(book);
	}
	@Override
	public Book selectOne(int id) {
		return bookdaoimpl.selectOne(id);
	}
	@Override
	public List<Book> selectBybookname(String bookname) {
		return bookdaoimpl.selectBybookname(bookname);
	}
}
