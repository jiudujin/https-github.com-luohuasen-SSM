package com.study.ssm.mapper;

import com.study.ssm.model.Person;

import java.util.List;

public interface PersonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Person record);

    int insertSelective(Person record);

    Person selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);

    void clean();

    int count();

    List<Person> list();
}