package com.book.service;

import java.util.List;

import com.book.pojo.BookInfo;

public interface BookInfoService {
	int getcount(String bookName);
	
	List<BookInfo> getBookList(String bookName,int from,int pageSize);

	BookInfo finById(int id);

	boolean addInfo(BookInfo infos);

	List<BookInfo> showBook();

	boolean updateInfo(BookInfo infos);

	boolean deleteBook(int id);
}
