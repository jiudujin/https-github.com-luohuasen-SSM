package com.study.ssm.service;

import java.util.List;

import com.study.ssm.model.User;

public interface UserService {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    void clean();
    
    int count();
    
    List<User> list();
}
