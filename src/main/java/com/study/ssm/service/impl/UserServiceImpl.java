/**
 * aaa
 */
package com.study.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.mapper.UserMapper;
import com.study.ssm.model.User;
import com.study.ssm.service.UserService;

@Service("userService") 
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(User record) {
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        return 0;
    }

    @Override
    public User selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return 0;
    }

    @Override
    public void clean(){
        userMapper.clean();
    }

    @Override
    public int count() {
        return userMapper.count();
    }

    @Override
    public List<User> list() {
        return userMapper.list();
    }   
}
