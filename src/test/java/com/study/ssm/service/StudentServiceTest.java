package com.study.ssm.service;

import junit.framework.Assert;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.study.ssm.model.Student;
import com.study.ssm.service.StudentService;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class StudentServiceTest {
    private static final Logger LOGGER = Logger.getLogger(StudentServiceTest.class);
    @Autowired
    private StudentService studentService;
    
    @Test
    public void selectByPrimaryKeyTest(){
        Student stu = studentService.selectByPrimaryKey(1);
        Assert.assertNotNull(stu);
    }
    
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
    public void updateByPrimaryKeySelectiveTest(){
        
    }
    
    @Test
    public void updateByPrimaryKeyTest(){
        
    }
}
