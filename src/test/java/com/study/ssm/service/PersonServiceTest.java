package com.study.ssm.service;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class PersonServiceTest extends BaseTest{

    @Autowired
    private PersonService personService;

    @Test
    public void clean(){

    }

    @Test
    public void count(){
        Assert.assertNotEquals(personService.count() , 0);
    }

    @Test
    public void list(){

    }
}
