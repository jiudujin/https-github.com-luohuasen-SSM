package com.study.ssm.mapper;

import com.study.ssm.model.Squad;

public interface SquadMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Squad record);

    int insertSelective(Squad record);

    Squad selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Squad record);

    int updateByPrimaryKey(Squad record);
}