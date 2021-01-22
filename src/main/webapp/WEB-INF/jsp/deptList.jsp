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
                    <li><a href="/user/findUser">管理员</a></li>
                    <li><a href="/emp/findEmp">员工管理</a></li>
                    <li id="active"><a href="/dept/findDept">部门管理</a></li>
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
                <span>部门管理页面</span>
            </div>
            <div class="search">
                <form action="${pageContext.request.contextPath}/dept/findDept">
                    <span>部门名称：</span>
                    <input type="text" placeholder="请输入部门名称" name="deptName" value=""/>

                    <input type="submit" value="查询" />
                    <a href="/dept/toadd">添加部门</a>
                </form>
            </div>
            <!--账单表格 样式和供应商公用-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">部门编号</th>
                    <th width="20%">部门名称</th>
                    <th width="20%">部门电话</th>
                    <th width="10%">部门经理</th>
                    <th width="30%">操作</th>
                </tr>
                <c:forEach items="${depts}" var="dept">
                    <tr>
                        <td>${dept.deptId}</td>
                        <td>${dept.deptName}</td>
                        <td>${dept.deptPhone}</td>
                        <td>${dept.deptManager}</td>
                        <td>
                            <a href="/dept/view?deptId=${dept.deptId}"><img src="/img/look.png" alt="查看" title="查看"/></a>
                            <a href="/dept/toupdate?deptId=${dept.deptId}"><img src="/img/xg.png" alt="修改" title="修改"/></a>
                            <a href="/dept/del?deptId=${dept.deptId}" class="removeBill"><img src="/img/sc.png" alt="删除" title="删除"/></a>
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
                                submitUrl="${pageContext.request.contextPath}/dept/findDept?pageIndex={0}&deptName=${dept.deptName}"/>

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