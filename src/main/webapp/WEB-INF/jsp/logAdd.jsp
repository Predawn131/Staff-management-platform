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
        <li><a href="/user/findUser">管理员</a></li>
        <li><a href="/emp/findEmp">员工管理</a></li>
        <li><a href="/dept/findDept">部门管理</a></li>
        <li><a href="/travel/findTvl">出差记录</a></li>
        <li><a href="/travel/toadd">出差记录添加</a></li>
        <li><a href="/log/findLog">企业运营日志</a></li>
        <li id="active"><a href="/log/toadd">上传日志</a></li>
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
            <span>日志管理页面 >> 日志添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="/log/add">

                <div>
                    <label for="logPerson">日志上传人：</label>
                    <input type="text" name="logPerson" id="logPerson" value="${userinfo.userName}" readonly required/>
                    <span >*日志上传人</span>
                </div>
                <div>
                    <label for="logTitle">日志标题：</label>
                    <input type="text" name="logTitle" id="logTitle" required/>
                    <span>*日志标题</span>

                </div>
                <div>
                    <label>日志内容：</label>
                    <textarea cols="40" rows="20" name="logInfo"></textarea>
                    <span>*输入日志描述</span>
                </div>

                <div>
                    <label >选择日志类型：</label>
                    <select name="logType" >
                        <option value="">--请选择类型--</option>
                        <option value="0">紧急日志</option>
                        <option value="1">日常日志</option>
                    </select>

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
<script src="/js/time.js"></script>

</body>
</html>