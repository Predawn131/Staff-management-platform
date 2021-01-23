﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <span>用户管理页面 >> 用户修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="/user/update">
                <div>
                    <label for="userId">用户编号：</label>
                    <input type="text" name="userId" id="userId" value="${user.userId}" readonly required />
                    <span>*请输入用户名称</span>
                </div>
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="userName" id="userName" value="${user.userName}" required />
                    <span>*请输入用户名称</span>
                </div>
                <div>
                    <label for="userPw">密码：</label>
                    <input type="text" name="userPw" id="userPw" value="${user.userPw}" required />
                    <span>*请输入密码</span>

                </div>
                <div>
                    <label>性别：</label>
                    <c:if test="${user.userSex == '男'}">
                        男：<input type="radio" name="userSex" value="男" checked="checked" required />
                        女：<input type="radio" name="userSex" value="女" required />
                    </c:if>
                    <c:if test="${user.userSex == '女'}">
                        男：<input type="radio" name="userSex" value="男" required />
                        女：<input type="radio" name="userSex" value="女" checked="checked" required />
                    </c:if>

                    <span>*请选择性别</span>
                </div>
                <div>
                    <label for="userAge">年龄：</label>
                    <input type="text" name="userAge" id="userAge" value="${user.userAge}" required />
                    <span>*请输入年龄</span>
                </div>
                <input type="hidden" name="userHobby" value="${user.userHobby}">
                <input type="hidden" name="userProvince" value="${user.userProvince}" />
                <input type="hidden" name="userCity" value="${user.userCity}" />
                <div>
                    <label>个人介绍：</label>
                    <textarea name="userInfo">${user.userInfo}</textarea>
                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.html">返回</a>-->
                    <input type="submit" value="保存" />
                    <input type="button" value="返回" onclick="history.back(-1)" />
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script src="/js/time.js"></script>

</body>
</html>