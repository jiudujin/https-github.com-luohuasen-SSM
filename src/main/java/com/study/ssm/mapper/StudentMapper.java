package com.study.ssm.mapper;

import java.util.List;
import com.study.ssm.model.Student;
public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
    
    void clean();
    
    int count();
    
    List<Student> list();
}