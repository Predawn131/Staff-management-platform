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
        <li id="active"><a href="/travel/findTvl">出差记录</a></li>
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
            <span>出差管理页面 >> 出差修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="/travel/update">
                <input type="hidden" name="tvlId" value="${tvl.tvlId}"/>
                <div>
                    <label for="tvlName">出差人：</label>
                    <input type="text" name="tvlName" id="tvlName" value="${userinfo.userName}" readonly required/>
                    <span >*请输入出差人姓名</span>
                </div>
                <div>
                    <label for="tvlNo">出差编号：</label>
                    <input type="text" name="tvlNo" value="${tvl.tvlNo}" id="tvlNo" required/>
                    <span>*请输入出差编号</span>

                </div>
                <div>
                    <label for="tvlCity">出差城市：</label>
                    <input type="text" name="tvlCity" value="${tvl.tvlCity}" id="tvlCity" required/>
                    <span>*请输入出差城市</span>

                </div>
                <div>
                    <label for="tvlPhone">联系电话：</label>
                    <input type="text" name="tvlPhone"value="${tvl.tvlPhone}" id="tvlPhone" required/>
                    <span>*请输入联系电话</span>

                </div>
                <div>
                    <label >出差类型：</label>
                    <c:if test="${tvl.tvlType=='长期出差'}">
                        <select name="tvlType" >
                            <option value="">--请选择类型--</option>
                            <option value="长期出差" selected="selected">长期出差</option>
                            <option value="短期出差">短期出差</option>
                        </select>
                    </c:if>
                    <c:if test="${tvl.tvlType=='短期出差'}">
                        <select name="tvlType" >
                            <option value="">--请选择类型--</option>
                            <option value="长期出差">长期出差</option>
                            <option value="短期出差" selected="selected">短期出差</option>
                        </select>
                    </c:if>

                </div>
                <div>
                    <label >出差内容：</label>
                    <textarea name="tvlInfo">${tvl.tvlInfo}</textarea>
                </div>
                <div>
                    <label for="tvlStartTime">开始时间：</label>
                    <input type="text" name="tvlStartTime"value="${tvl.tvlStartTime}" id="tvlStartTime" required/>
                    <span>*请输入开始时间（格式2020-01-01）</span>
                </div>
                <div>
                    <label for="tvlEndTime">结束时间：</label>
                    <input type="text" name="tvlEndTime"value="${tvl.tvlEndTime}" id="tvlEndTime" required/>
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
<script src="/js/time.js"></script>

</body>
</html>