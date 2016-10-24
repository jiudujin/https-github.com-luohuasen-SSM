package com.study.ssm.service;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class SubjectServiceTest {
    private static final Logger LOGGER = Logger.getLogger(SubjectServiceTest.class);
    @Autowired
    private StudentService subjectService;
    @Test
    public void deleteByPrimaryKey(){
        
    }
    
    @Test
    public void insertTest(){
        
    }
    
    @Test
    public void insertSelectiveTest(){
        
    }
    
    @Test
    public void selectByPrimaryKeyTest(){
        
    }
    
    @Test
    public void updateByPrimaryKeySelectiveTest(){
        
    }
    
    @Test
    public void updateByPrimaryKeyTest(){
        
    }
}
