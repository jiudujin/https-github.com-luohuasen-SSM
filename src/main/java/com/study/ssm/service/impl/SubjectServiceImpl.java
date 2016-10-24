package com.study.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.mapper.SubjectMapper;
import com.study.ssm.model.Subject;
import com.study.ssm.service.SubjectService;
@Service("subjectService") 
public class SubjectServiceImpl implements SubjectService {
    @Autowired
    private SubjectMapper subjectMapper;
    
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return subjectMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Subject record) {
        return subjectMapper.insert(record);
    }

    @Override
    public int insertSelective(Subject record) {
        return subjectMapper.insert(record);
    }

    @Override
    public Subject selectByPrimaryKey(Integer id) {
        return subjectMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Subject record) {
        return subjectMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Subject record) {
        return subjectMapper.updateByPrimaryKey(record);
    }

    @Override
    public void clean(){
        subjectMapper.clean();
    }

    @Override
    public int count() {
        return subjectMapper.count();
    }

    @Override
    public List<Subject> list() {
        return subjectMapper.list();
    }
}
