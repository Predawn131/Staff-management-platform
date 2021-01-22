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
                <li><a href="/user/findUser">管理员</a></li>
                <li id="active"><a href="/emp/findEmp">员工管理</a></li>
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
            <span>员工管理页面 >> 员工添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="/emp/add">

                <div>
                    <label for="empName">员工姓名：</label>
                    <input type="text" name="empName" id="empName" required/>
                    <span >*请输入员工姓名</span>
                </div>
                <div>
                    <label >性别：</label>
                    男：<input type="radio" name="empSex" value="男"  required/>
                    女：<input type="radio" name="empSex" value="女"  required/>
                    <span>*请选择性别</span>
                </div>
                <div>
                    <label for="empBirthday">出生日期：</label>
                    <input type="text" name="empBirthday" autocomplete="off" id="empBirthday" required/>
                    <span>*请输入出生日期（格式2020-01-01）</span>
                </div>
                <div>
                <label for="empDept">所属部门：</label>
                <input type="text" name="empDept" id="empDept" required/>
                <span>*请输入所属部门</span>
                </div>
                <div>
                    <label >选择学历：</label>
                    <select name="empEdu" >
                        <option value="">--请选择学历--</option>
                        <option value="博士研究生">博士研究生</option>
                        <option value="硕士研究生">硕士研究生</option>
                        <option value="本科">本科</option>
                        <option value="专科">专科</option>
                        <option value="高中">高中</option>
                        <option value="初中">初中</option>
                        <option value="小学">小学</option>
                    </select>
                    <span>*请选择学历</span>
                </div>
                <div>
                    <label for="empAddress">住址：</label>
                    <input type="text" name="empAddress" id="empAddress" required/>
                    <span>*请输入住址</span>
                </div>
                <div>
                    <label for="empPhone">联系电话：</label>
                    <input type="text" name="empPhone" id="empPhone" required/>
                    <span>*请输入联系电话</span>
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
<script src="/laydate/laydate.js"></script>
<script>
    //出生日期
    laydate.render({
        elem: '#empBirthday' //指定元素
        , trigger:'click'
    });
</script>
</body>
</html>