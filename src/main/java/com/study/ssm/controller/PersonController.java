package com.study.ssm.controller;

import com.study.ssm.model.Person;
import com.study.ssm.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by luohuasen on 2017/5/13.
 */
@Controller
@RequestMapping("/person")
public class PersonController{
    @Autowired
    private PersonService personService;


    @RequestMapping("/list")
    public String list(ModelMap modelMap){
        Person p = new Person();
        p.setName("luohuasen");
        modelMap.put("person",p);
        return  "/person/showInfo";
    }
}
