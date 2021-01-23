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
<input type="checkbox" id="check">
<label for="check">
    <i class="menu" id="btn"></i>
    <i class="fas fa-times" id="cancel"></i>
</label>
<div class="sidebar">
    <header>功能列表</header>
    <ul class="list">
        <li id="active"><a href="/user/findUser">管理员</a></li>
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
        <span id="time">2020年11月20日 11:11 星期一</span>
        <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>用户编号：</strong><span>${user.userId}</span></p>
            <p><strong>用户姓名：</strong><span>${user.userName}</span></p>
            <p><strong>用户密码：</strong><span>${user.userPw}</span></p>
            <p><strong>用户性别：</strong><span>${user.userSex}</span></p>
            <p><strong>用户爱好：</strong><span>${user.userHobby}</span></p>
            <p><strong>用户地址：</strong><span>${user.userProvince} 省 ${user.userCity}</span></p>
            <p><strong>个人介绍：</strong><span>${user.userInfo}</span></p>

            <input type="button" value="返回" onclick="history.back(-1)"/>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="/js/time.js"></script>

</body>
</html>