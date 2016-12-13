/**
 * @auther luohuasen at 2016年12月13日10:32:55
 * */
package com.study.ssm.service.impl;
import com.study.ssm.mapper.ScoreMapper;
import com.study.ssm.model.Score;
import com.study.ssm.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@SuppressWarnings("SpringJavaAutowiringInspection")
@Service("scoreService")
public class ScoreServiceImpl implements ScoreService {
    @Autowired
    private ScoreMapper scoreMapper;
    
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return scoreMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Score record) {
        return scoreMapper.insert(record);
    }

    @Override
    public int insertSelective(Score record) {
        return scoreMapper.insertSelective(record);
    }

    @Override
    public Score selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Score record) {
        return scoreMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Score record) {
        return scoreMapper.updateByPrimaryKey(record);
    }
    
    @Override
    public void clean(){
        scoreMapper.clean();
    }
    
    @Override
    public int count(){
        return scoreMapper.count();
    }
    
    @Override
    public List<Score> list(){
        return scoreMapper.list();
    }
}
