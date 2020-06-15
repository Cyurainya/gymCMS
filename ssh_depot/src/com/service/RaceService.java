package com.service;

import com.dao.RaceDao;
import com.entity.Goods;
import com.entity.Race;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service    // 注解为spring管理bean
@Transactional    //配置此方法加入事务管理
public class RaceService {

    @Resource
    private RaceDao raceDao;

    //获取所有商品信息
    public List<Race> getRaceList() {
        return raceDao.getRaceList();
    }

    //获取所有赛事信息
    public List<Race> getRaceList(int page, int size) {
        return raceDao.getRaceList(page, size);
    }

    //获取赛事总数
    public long getRaceTotal(){
        return raceDao.getRaceTotal();
    }

    //通过名称查询
    public List<Race> getRaceList(String name){
        return raceDao.getRaceList(name);
    }

    //通过id查询
    public Race getRaceList(int id){
        return getRace(id);
    }

    //通过id查询赛事信息
    public Race getRace(int id){
        return raceDao.getRace(id);
    }

    //更新赛事信息
    public boolean update(Race race){
        return raceDao.update(race);
    }

    //删除赛事信息
    public boolean delete(Race race){
        return raceDao.delete(race);
    }

    //添加赛事
    public  boolean add(Race race){
        return raceDao.save(race) > 0;
    }

    //通过赛事条件获取商品id集合
    public List<Integer> getRaceList(Race race){
        List<Integer> raceidList = new ArrayList<>();
        List<Race> raceList = null;
        if(race != null && race.getId()>0){
            raceList = Arrays.asList(this.getRaceList(race.getId()));
        }else if(race != null && race.getName() != null && !race.getName().trim().isEmpty()){
            raceList = this.getRaceList(race.getName());
        }
        if(raceList != null && raceList.isEmpty()){
            for(Race g : raceList){
                raceidList.add(g.getId());
            }
        }
        return  raceidList;
    }

}
