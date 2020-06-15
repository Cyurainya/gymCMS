package com.dao;

import com.entity.Race;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository//注册spring管理bean
public class RaceDao extends BaseDao{

    //获取所有赛事列表
    public List<Race> getRaceList(int page, int size) {
        return getSession().createQuery("from Race order by id desc", Race.class)
                .setFirstResult((page-1)*size).setMaxResults(size).list();
    }

    //获取赛事总数
    public long getRaceTotal(){
        return getSession().createQuery("select count(*) from Race", Long.class).uniqueResult();

    }

}
