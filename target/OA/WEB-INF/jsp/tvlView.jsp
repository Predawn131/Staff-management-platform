<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li id="active"><a href="/travel/list">出差记录</a></li>
                <li><a href="/travel/toadd">出差记录添加</a></li>
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
            <span>出差管理页面 >> 出差信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>用户编号：</strong><span>${tvl.tvlId}</span></p>
            <p><strong>出差编号：</strong><span>${tvl.tvlNo}</span></p>
            <p><strong>出差人：</strong><span>${tvl.tvlName}</span></p>
            <p><strong>出差城市：</strong><span>${tvl.tvlCity}</span></p>
            <p><strong>出差类型：</strong>
                <span>
                    <c:if test="${tvl.tvlType == '长期出差'}">
                        长期出差
                    </c:if>
                    <c:if test="${tvl.tvlType == '短期出差'}">
                        短期出差
                    </c:if>
                </span></p>
            <p><strong>出差人联系电话：</strong><span>${tvl.tvlPhone}</span></p>
            <p><strong>出差内容：</strong><span>${tvl.tvlInfo}</span></p>
            <p><strong>开始时间：</strong><span>${tvl.tvlStartTime}</span></p>
            <p><strong>截止时间：</strong><span>${tvl.tvlEndTime}</span></p>

            <input type="button" value="返回" onclick="history.back(-1)"/>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="/js/time.js"></script>

</body>
</html>