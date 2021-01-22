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
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="/user/add">

                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="userName" id="userName" required/>
                    <span >*请输入用户名称</span>
                </div>
                <div>
                    <label for="userPw">密码：</label>
                    <input type="text" name="userPw" id="userPw" required/>
                    <span>*请输入密码</span>

                </div>
                <div>
                    <label >性别：</label>
                    男：<input type="radio" name="userSex" value="男"  required/>
                    女：<input type="radio" name="userSex" value="女"  required/>
                    <span>*请选择性别</span>
                </div>
                <div>
                    <label for="userAge">年龄：</label>
                    <input type="text" name="userAge" id="userAge" required/>
                    <span>*请输入年龄</span>
                </div>
                <div class="aihao">
                    <label>爱好：</label>
                    学习<input  type="checkbox" name="userHobby" value="学习"/>
                    看书<input  type="checkbox" name="userHobby" value="看书"/>
                    听歌<input  type="checkbox" name="userHobby" value="听歌"/>
                    <span>*请选择爱好</span>
                </div>
                <div>
                    <label >选择地区：</label>
                    <select name="userProvince" >
                        <option value="">--请选择省份--</option>
                        <option value="河南">河南</option>
                        <option value="河北">河北</option>
                    </select>
                    <select name="userCity" >
                        <option value="">--请选择城市--</option>
                        <option value="郑州">郑州</option>
                        <option value="安阳">安阳</option>
                    </select>
                </div>
                <div>
                    <label >个人介绍：</label>
                    <textarea name="userInfo"></textarea>
                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.html">返回</a>-->
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