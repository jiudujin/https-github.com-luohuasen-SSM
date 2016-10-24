package com.study.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.mapper.StudentMapper;
import com.study.ssm.model.Student;
import com.study.ssm.service.StudentService;

@Service("studentService") 
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;
    
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return studentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Student record) {
        return studentMapper.insert(record);
    }

    @Override
    public int insertSelective(Student record) {
        return studentMapper.insertSelective(record);
    }

    @Override
    public Student selectByPrimaryKey(Integer id) {
        return studentMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Student record) {
        return studentMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Student record) {
        return studentMapper.updateByPrimaryKey(record);
    }

    @Override
    public void clean(){
        studentMapper.clean();
    }

    @Override
    public int count() {
        return studentMapper.count();
    }

    @Override
    public List<Student> list() {
        return studentMapper.list();
    }
}
