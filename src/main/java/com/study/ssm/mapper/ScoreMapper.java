package com.study.ssm.mapper;

import java.util.List;
import com.study.ssm.model.Score;
public interface ScoreMapper {
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