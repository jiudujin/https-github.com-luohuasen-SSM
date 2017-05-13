package com.study.ssm.controller;

import com.study.ssm.model.Person;
import com.study.ssm.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by luohuasen on 2017/5/13.
 */
@Controller
@RequestMapping("/person")
public class PersonController{
    @Autowired
    private PersonService personService;
    @RequestMapping("/list")
    public List<Person> list(){
        return  personService.list();
    }
}
