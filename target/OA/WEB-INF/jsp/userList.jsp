﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="yyf" uri="http://yyf.pager-tags" %>
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
        <span id="time">2020年11月20日 11:11  星期一</span>
        <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </section>
<!--主体内容-->
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                    <li id="active"><a href="/user/findUser">管理员</a></li>
                    <li><a href="/emp/findEmp">员工管理</a></li>
                    <li><a href="/dept/findDept">部门管理</a></li>
                    <li><a href="/travel/findTvl">出差记录</a></li>
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
                <span>用户管理页面</span>
            </div>
            <div class="search">
                <form action="${pageContext.request.contextPath}/user/findUser">
                    <span>用户名：</span>
                    <input type="text" placeholder="请输入用户名" name="userName" value="${user.userName}"/>

                    <input type="submit" value="查询" />
                    <a href="/user/toadd">添加管理员</a>
                </form>

            </div>
            <!--账单表格 样式和供应商公用-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">id</th>
                    <th width="20%">用户名</th>
                    <th width="10%">密码</th>
                    <th width="10%">性别</th>
                    <th width="10%">个人介绍</th>
                    <th width="30%">操作</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.userName}</td>
                        <td>${user.userPw}</td>
                        <td>${user.userSex}</td>
                        <td>${user.userInfo}</td>
                        <td>
                            <a href="/user/view?userId=${user.userId}"><img src="/img/look.png" alt="查看" title="查看"/></a>
                            <a href="/user/toupdate?userId=${user.userId}"><img src="/img/xg.png" alt="修改" title="修改"/></a>
                            <a href="/user/del?userId=${user.userId}" class="removeBill"><img src="/img/sc.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>


            </table>
            <!-- 分页标签 -->
            <table class="page" cellpadding="0" cellspacing="0">
                <tr valign="top">
                    <td align="center" class="font3">
                        <yyf:pager
                                pageIndex="${pageModel.pageIndex}"
                                pageSize="${pageModel.pageSize}"
                                recordCount="${pageModel.recordCount}"
                                submitUrl="${pageContext.request.contextPath}/user/findUser?pageIndex={0}&userName=${user.userName}"/>

                    </td>
                </tr>
            </table>

        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该订单吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

    <footer class="footer">
    </footer>
<script src="/js/time.js"></script>
<script src="/js/jquery.js"></script>
<script src="/js/js.js"></script>


</body>
</html>