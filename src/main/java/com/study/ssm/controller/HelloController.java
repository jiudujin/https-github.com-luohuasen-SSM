package com.study.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by luohuasen on 2017/5/13.
 */
@Controller
@RequestMapping("/hello")
public class HelloController {
    private final static String title = "hello";
    @RequestMapping("/say")
    @ResponseBody
    public String say(String name){
        System.out.println("成功获取");
        return title + name;
    }
}
