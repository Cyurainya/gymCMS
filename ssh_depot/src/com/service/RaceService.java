package com.service;

import com.dao.RaceDao;
import com.entity.Race;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service    // 注解为spring管理bean
@Transactional    //配置此方法加入事务管理
public class RaceService {

    @Resource
    private RaceDao raceDao;

    //获取所有赛事信息
    public List<Race> getRaceList(int page, int size) {
        return raceDao.getRaceList(page, size);
    }

    //获取赛事总数
    public long getRaceTotal(){
        return raceDao.getRaceTotal();
    }

    //添加赛事
    public  boolean add(Race race){
        return raceDao.save(race) > 0;
    }
}
