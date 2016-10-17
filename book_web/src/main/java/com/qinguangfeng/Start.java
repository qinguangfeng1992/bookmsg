package com.qinguangfeng;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;

/**
 * Created by Administrator on 2016/9/30.
 */
@SpringBootApplication
@Controller
@MapperScan("com.qinguangfeng.dao.mapper")
@ComponentScan({"com.qinguangfeng.services","com.fc","com.qinguangfeng.controller"})
public class Start extends SpringBootServletInitializer {
    @Bean
    public Object init(){
        System.out.println("自己想要创建的一个对象");
        return new Object();
    }
}
