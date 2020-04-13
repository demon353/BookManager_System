package com.book.dao.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.book.pojo.BookInfo;

public interface BookMapper {
	// 获得图书信息的方法
	int getcount(@Param("bookName") String bookName);
	List<BookInfo> getBookList(@Param("bookName") String bookName,@Param("from") int from,@Param("pageSize") int pageSize);
	BookInfo finfById(@Param("id")int id);
	int addBook(BookInfo infos);
	List<BookInfo> findBook();
	int updateBook(BookInfo infos);
	int deleteBook(@Param("id")int id);
}
