<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<style>
    .searchForm{
        display: flex;

        padding: 10px;
        justify-content: flex-end;
    }
    .searchInput{
        width: 25%;
        margin-right: 20px;
    }
    .searchBtn{
        width: 10%;
    }
</style>
<body>
<div class="panel panel-default">
    <div class="panel-body">
       <div>
           <form action="raceSearch.action" role="form" class="searchForm">
               <input type="text" class="form-control searchInput"  placeholder="请输入名称" name="race.name">
               <input class="form-control btn btn-primary searchBtn" id="submit" value="查询" type="submit" >
           </form>
       </div>
        <table class="table table table-striped" >
            <tr>
                <th >
                    <div align="center" >比赛名字</div></th>
                <th >
                    <div align="center">裁判</div></th>
                <th >
                    <div align="center">发布时间</div></th>
                <th >
                    <div align="center" >申请人</div></th>

                <th>
                    <div align="center">申请人联系方式</div></th>
                <th >
                    <div align="center">场地</div></th>
                <th >
                    <div align="center">比赛开始时间</div></th>
                <th >
                    <div align="center">比赛结束时间</div></th>
            </tr>
            <!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->
            <s:iterator value="raceList">

                <tr >
                    <td >
                        <div align="center"><s:property value="name"/></div></td>
                    <td >
                        <div align="center"><s:property value="referee"/></div></td>
                    <td >
                        <div align="center"><s:property value="time"/></div></td>
                    <td >
                        <div align="center"><s:property value="proposer"/></div></td>
                    <td >
                        <div align="center"><s:property value="phone"/></div></td>
                    <td >
                        <div align="center"><s:property value="area"/></div></td>
                    <td >
                        <div align="center"><s:property value="startTime"/></div></td>
                    <td >
                        <div align="center"><s:property value="endTime"/></div></td>
                </tr>

            </s:iterator>
        </table>
    </div>
</div>
</body>
</html>
