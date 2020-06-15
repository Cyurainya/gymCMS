package com.entity;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity //hibernate实体类
public class Race {
    @Id
    @GeneratedValue//自增地段
    private int id;
    private Date time;
    private String proposer;
    private String phone;
    private String area;
    private Date startTime;
    private Date endTime;
    private String referee;
    private String name;
    @ManyToOne
    @NotFound(action= NotFoundAction.IGNORE) // 外键找不到时忽略, 默认抛出异常

    public String getPhone() {
        return phone;
    }

    public Date getEndTime() {
        return endTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public Date getTime() {
        return time;
    }

    public int getId() {
        return id;
    }

    public String getArea() {
        return area;
    }

    public String getProposer() {
        return proposer;
    }

    public String getReferee() {
        return referee;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setProposer(String proposer) {
        this.proposer = proposer;
    }

    public void setReferee(String referee) {
        this.referee = referee;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
