<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="yyf" uri="http://yyf.pager-tags" %>
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
        <li id="active"><a href="/log/findLog">企业运营日志</a></li>
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
                <span>日志管理页面</span>
            </div>
            <div class="search">
                <form action="${pageContext.request.contextPath}/log/findLog">
                    <span>填写人姓名：</span>
                    <input type="text" placeholder="请输入填写人姓名" name="logPerson" value=""/>

                    <span>日志标题：</span>
                    <input type="text" placeholder="请输入日志标题" name="logTitle" value=""/>

                    <span>日志类型：</span>
                    <select name="logType" >
                        <option value="">--请选择日志类型--</option>
                        <option value="紧急日志">紧急日志</option>
                        <option value="日常日志">日常日志</option>
                    </select>
                    <input type="submit" value="查询" />
                    <a href="/log/toadd">添加日志</a>
                </form>

            </div>
            <!--账单表格 样式和供应商公用-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">日志编号</th>
                    <th width="20%">日志标题</th>
                    <th width="10%">日志内容</th>
                    <th width="10%">填写人</th>
                    <th width="10%">日志类型</th>
                    <th width="10%">上传时间</th>
                    <th width="30%">操作</th>
                </tr>
                <c:forEach items="${logs}" var="log">
                    <tr>
                        <td>${log.logId}</td>
                        <td>${log.logTitle}</td>
                        <td>${log.logInfo}</td>
                        <td>${log.logPerson}</td>
                        <td>

                            <c:if test="${log.logType == '紧急日志'}">
                                <font color="red">紧急日志</font>
                            </c:if>
                            <c:if test="${log.logType == '日常日志'}">
                                日常日志
                            </c:if>
                        </td>
                        <td>${log.logTime}</td>
                        <td>
                            <a href="/log/view?logId=${log.logId}"><img src="/img/look.png" alt="查看" title="查看"/></a>
                            <a href="/log/toupdate?logId=${log.logId}"><img src="/img/xg.png" alt="修改" title="修改"/></a>
                            <a href="/log/del?logId=${log.logId}" class="removeBill"><img src="/img/sc.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>


            </table>
            <table class="page" cellpadding="0" cellspacing="0">
                <tr valign="top">
                    <td align="center" class="font3">
                        <yyf:pager
                                pageIndex="${pageModel.pageIndex}"
                                pageSize="${pageModel.pageSize}"
                                recordCount="${pageModel.recordCount}"
                                submitUrl="${pageContext.request.contextPath}/log/findLog?pageIndex={0}&logPerson=${log.logPerson}&logTitle=${log.logTitle}"/>

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

<script src="/js/jquery.js"></script>
<script src="/js/js.js"></script>
<script src="/js/time.js"></script>

</body>
</html>