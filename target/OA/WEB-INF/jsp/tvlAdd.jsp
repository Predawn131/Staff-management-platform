﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>亚创企业信息管理平台</title>
    <link rel="stylesheet" href="/css/public.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>亚创企业信息管理平台</h1>

    <div class="publicHeaderR">
        <p><span id="hours">下午好！</span><span style="color: #fff21b"> ${userinfo.userName}</span> , 欢迎你！</p>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2015年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="/user/list">管理员</a></li>
                <li><a href="/emp/list">员工管理</a></li>
                <li><a href="/dept/list">部门管理</a></li>
                <li><a href="/travel/list">出差记录</a></li>
                <li id="active"><a href="/travel/toadd">出差记录添加</a></li>
                <li><a href="/log/list">企业运营日志</a></li>
                <li><a href="/log/toadd">上传日志</a></li>
                <li><a href="/user/toupdatePw">密码修改</a></li>
                <li><a href="/user/exit">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>出差管理页面 >> 出差添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="/travel/add">

                <div>
                    <label for="tvlName">出差人：</label>
                    <input type="text" name="tvlName" id="tvlName" value="${userinfo.userName}" readonly required/>
                    <span >*请输入出差人姓名</span>
                </div>
                <div>
                    <label for="tvlNo">出差编号：</label>
                    <input type="text" name="tvlNo" id="tvlNo" required/>
                    <span>*请输入出差编号</span>

                </div>
                <div>
                    <label for="tvlCity">出差城市：</label>
                    <input type="text" name="tvlCity" id="tvlCity" required/>
                    <span>*请输入出差城市</span>

                </div>
                <div>
                    <label for="tvlPhone">联系电话：</label>
                    <input type="text" name="tvlPhone" id="tvlPhone" required/>
                    <span>*请输入联系电话</span>

                </div>
                <div>
                    <label >出差类型：</label>
                    <select name="tvlType" >
                        <option value="">--请选择类型--</option>
                        <option value="长期出差">长期出差</option>
                        <option value="短期出差">短期出差</option>
                    </select>
                </div>
                <div>
                    <label >出差内容：</label>
                    <textarea name="tvlInfo"></textarea>
                </div>
                <div>
                    <label for="tvlStartTime">开始时间：</label>
                    <input type="text" name="tvlStartTime" autocomplete="off" id="tvlStartTime" required/>
                    <span>*请输入开始时间（格式2020-01-01）</span>
                </div>
                <div>
                    <label for="tvlEndTime">结束时间：</label>
                    <input type="text" name="tvlEndTime"autocomplete="off" id="tvlEndTime" required/>
                    <span>*请输入结束时间</span>
                </div>



                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="billList.html">返回</a>-->
                    <input type="submit" value="保存" />
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">

</footer>
<script src="/laydate/laydate.js"></script>
<script>
    //开始时间
    laydate.render({
        elem: '#tvlStartTime' //指定元素
        , trigger:'click'
    });
    //结束时间
    laydate.render({
        elem: '#tvlEndTime' //指定元素
        , trigger:'click'
    });
</script>
</body>
</html>