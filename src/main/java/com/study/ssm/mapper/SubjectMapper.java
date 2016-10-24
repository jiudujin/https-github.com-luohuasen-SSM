package com.study.ssm.mapper;
import java.util.List;
import com.study.ssm.model.Subject;
public interface SubjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Subject record);

    int insertSelective(Subject record);

    Subject selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Subject record);

    int updateByPrimaryKey(Subject record);
    
    void clean();
    
    int count();
    
    List<Subject> list();
}