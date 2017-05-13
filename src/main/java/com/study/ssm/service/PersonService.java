package com.study.ssm.service;

import com.study.ssm.model.Person;

import java.util.List;

/**
 * Created by luohuasen on 2017/5/13.
 */
public interface PersonService {

    void clean();

    int count();

    List<Person> list();
}
