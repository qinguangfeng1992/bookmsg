package com.qinguangfeng.services;

import com.qinguangfeng.dao.entity.Book;

import java.util.List;

/**
 * Created by Administrator on 2016/9/30.
 */
public interface BookMsgSer {
    //查询全部的方法
    public List<Book> findAll();

    public Book findBookAll(int bookid);

    public int updateBook(Book book);
}
