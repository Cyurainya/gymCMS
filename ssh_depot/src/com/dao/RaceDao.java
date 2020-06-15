package com.dao;

import com.entity.Goods;
import com.entity.Race;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository//注册spring管理bean
public class RaceDao extends BaseDao{

    //获取所有赛事列表page
    public List<Race> getRaceList() {
        return getSession().createQuery("from Race order by time desc", Race.class).list();
    }

    //获取所有赛事列表page
    public List<Race> getRaceList(int page, int size) {
        return getSession().createQuery("from Race order by time desc", Race.class)
                .setFirstResult((page-1)*size).setMaxResults(size).list();
    }

    //获取赛事总数
    public long getRaceTotal(){
        return getSession().createQuery("select count(*) from Race", Long.class).uniqueResult();

    }

    //通过名称查询
    public List<Race> getRaceList(String name){
        return getSession().createQuery("from Race where name like :name", Race.class)
                .setParameter("name", "%"+name+"%").list();
    }

    //通过id获取赛事信息
    public Race getRace(int id) {
        return getSession().get(Race.class, id);
    }

}
