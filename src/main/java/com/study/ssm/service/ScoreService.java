package com.study.ssm.service;

import java.util.List;

import com.study.ssm.model.Score;

public interface ScoreService {
    int deleteByPrimaryKey(Integer id);

    int insert(Score record);

    int insertSelective(Score record);

    Score selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Score record);

    int updateByPrimaryKey(Score record);
    
    void clean();
    
    int count();
    
    List<Score> list();
}
