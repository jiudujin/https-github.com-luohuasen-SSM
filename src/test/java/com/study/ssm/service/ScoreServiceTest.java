package com.study.ssm.service;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Assert;
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class ScoreServiceTest {
    private static final Logger LOGGER = Logger.getLogger(ScoreServiceTest.class);
    @Autowired
    private StudentService scoreService;
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
    
    @Test
    public void cleanTest(){
        scoreService.clean();
        Assert.state(scoreService.count() == 0);
    }
}
