package com.qinguangfeng.controller;


import com.qinguangfeng.dao.entity.Book;

import com.qinguangfeng.services.impl.BooMsgServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * Created by Administrator on 2016/9/27.
 */
@Controller
public class contro {

    @Autowired
    private BooMsgServiceImpl booMsgService;



    @RequestMapping("/booklist")
    @ResponseBody
    public Object getTopList() {
        return booMsgService.findAll();

    }



    //主页
    @RequestMapping("/bookindex")
    public String getTopIndex(ModelMap modelMap) {
        List<Book> list = booMsgService.findAll();
        modelMap.put("list", list);
        return "index";

    }

    //编辑的主页

    @RequestMapping("/editbook")
    public String editTop(@RequestParam("bookid") Integer bookid, ModelMap modelMap) {

        Book topic = booMsgService.findBookAll(bookid);
        List<Book>glist= booMsgService.findAll();
        modelMap.put("topic", topic);
        modelMap.put("glist",glist);

        return "bianji";
    }
    //操作编辑的页面
    @RequestMapping("/doeditbook")
    @ResponseBody
    public int doEditTop(Book book) {
        try {
            int num = booMsgService.updateBook(book);
            return num;
        } catch (Exception e) {
            return -1;
        }
   }


}
