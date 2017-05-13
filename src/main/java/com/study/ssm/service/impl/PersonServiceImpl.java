package com.study.ssm.service.impl;

import com.study.ssm.mapper.PersonMapper;
import com.study.ssm.model.Person;
import com.study.ssm.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by luohuasen on 2017/5/13.
 */
public class PersonServiceImpl implements PersonService {
    @Autowired
    private PersonMapper personMapper;

    @Override
    public void clean() {
         personMapper.clean();
    }

    @Override
    public int count() {
        return personMapper.count();
    }

    @Override
    public List<Person> list() {
        return personMapper.list();
    }
}
