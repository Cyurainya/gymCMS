package com.action;


import com.entity.Race;
import com.service.RaceService;
import com.util.PageUtil;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import javax.annotation.Resource;

import java.util.List;

@Results({
        @Result(name="list",location="/jsps/pages/race/race-list.jsp"),
        @Result(name="relist",type="redirect",location="raceList.action?page=${page}"),
        @Result(name="release",type="redirect",location="/jsps/pages/race/race-release.jsp"),

})

public class RaceAction extends BaseAction{
    private static final long serialVersionUID = 1L;
    protected Race race;
    private List<Race> raceList;
    @Resource
    private RaceService raceService;

    @Action("raceList")
    public String raceList(){
        raceList = raceService.getRaceList(page,size);
       pageTool = PageUtil.getPageTool(getServletRequest(),raceService.getRaceTotal(),page,size);

        return "list";
    }

    //发布赛事
    @Action("raceRelease")
    public String add(){
        raceService.add(race);
       return "relist";
    }

    //添加页面
    @Action("raceReleasePage")
    public String raceReleasePage(){

        return "release";
    }

    public Race getRace(){
        return race;
    }

    public void setRace(Race race) {
        this.race = race;
    }

    public List<Race> getRaceList() {
        return raceList;
    }

    public void setRaceList(List<Race> raceList) {
        this.raceList = raceList;
    }
}
