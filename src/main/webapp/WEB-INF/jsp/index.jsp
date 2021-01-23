<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>亚创企业信息管理平台</title>
    <link rel="stylesheet" href="/css/liststyle.css"/>
    <link rel="stylesheet" href="/css/public.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<%--<!--头部-->
<header class="publicHeader">
    <h1>亚创企业信息管理平台</h1>

    <div class="publicHeaderR">
        <p><span id="hours"></span><span style="color: #fff21b"> ${userinfo.userName}</span> , 欢迎你！</p>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2020年11月20日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left" >
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="/user/findUser">管理员</a></li>
                <li><a href="/emp/findEmp">员工管理</a></li>
                <li><a href="/dept/findDept">部门管理</a></li>
                <li><a href="/travel/findTvl">出差记录</a></li>
                <li><a href="/travel/toadd">出差记录添加</a></li>
                <li><a href="/log/findLog">企业运营日志</a></li>
                <li><a href="/log/toadd">上传日志</a></li>
                <li><a href="/user/toupdatePw">密码修改</a></li>
                <li><a href="/user/exit">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <img class="wColck" src="/img/GULULU.png" alt=""/>
        <img class="rx" src="/img/yx.png" >
        <div class="wFont">
            <h2>${userinfo.userName}</h2>
            <p>欢迎来到企业后台人员管理系统!</p>
&lt;%&ndash;            <span id="hours"></span>&ndash;%&gt;
        </div>
    </div>
</section>--%>

<input type="checkbox" id="check">
<label for="check">
    <i class="menu" id="btn"></i>
    <i class="fas fa-times" id="cancel"></i>
</label>
<div class="sidebar">
    <header>功能列表</header>
    <!-- <ul>
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Shortcuts</a></li>
        <li><a href="#">Overview</a></li>
        <li><a href="#">Events</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
    </ul> -->
    <ul class="list">
        <li><a href="/user/findUser">管理员</a></li>
        <li><a href="/emp/findEmp">员工管理</a></li>
        <li><a href="/dept/findDept">部门管理</a></li>
        <li><a href="/travel/findTvl">出差记录</a></li>
        <li><a href="/travel/toadd">出差记录添加</a></li>
        <li><a href="/log/findLog">企业运营日志</a></li>
        <li><a href="/log/toadd">上传日志</a></li>
        <li><a href="/user/toupdatePw">密码修改</a></li>
        <li><a href="/user/exit">退出系统</a></li>
    </ul>
</div>
<section>
    <!--头部-->
    <header class="publicHeader">
        <h1>亚创企业信息管理平台</h1>
        <div class="publicHeaderR">
            <p><span id="hours">下午好！</span><span style="color: #fff21b"> ${userinfo.userName}</span> , 欢迎你！</p>
        </div>
    </header>
    <!--时间-->
    <div class="publicTime">
        <span id="time">2020年11月20日 11:11  星期一</span>
        <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </div>
    <div class="right">
        <img class="wColck" src="../img/GULULU.png" alt=""/>
        <img class="rx" src="../img/yx.png" >
        <div class="wFont">
            <h2>${userinfo.userName}</h2>
            <p>欢迎来到企业后台人员管理系统!</p>

        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="/js/time.js"></script>
<div style="text-align:center;">

</div>
</body>
</html>