package com.qinguangfeng.services.impl;

import com.qinguangfeng.dao.entity.Book;
import com.qinguangfeng.dao.mapper.BookMapper;
import com.qinguangfeng.services.BookMsgSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/30.
 */
@Service
public class BooMsgServiceImpl implements BookMsgSer{
    @Autowired
    private BookMapper bookMapper;
    //查询全部的信息
    @Override
    public List<Book> findAll() {
        return bookMapper.searchBookByParams(null);
    }


    //通过ID查询全部的信息，为了编辑页面的第一步，
    @Override
    public Book findBookAll(int bookid) {
        Map p = new HashMap();
        p.put("bookid", bookid);

        List<Book> list = bookMapper.searchBookByParams(p);
        if (list.size() == 1) {
            return list.get(0);
        } else {
            return null;
        }
    }

    //执行编辑页面的方法，第二步，
    @Override
    public int updateBook(Book book) {

        int num = bookMapper.updateBook(book);
        return num;

    }
}
