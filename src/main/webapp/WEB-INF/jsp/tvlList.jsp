<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <li><a href="/emp/findEmp">员工管理</a></li>
                    <li><a href="/dept/findDept">部门管理</a></li>
                    <li id="active"><a href="/travel/findTvl">出差记录</a></li>
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
                <span>出差管理页面</span>
            </div>
            <div class="search">
                <form action="${pageContext.request.contextPath}/travel/findTvl">
                <span>出差人姓名：</span>
                <input type="text" placeholder="请输入出差人姓名" name="tvlName" value=""/>
                
                <span>出差类型：</span>
                <select name="tvlType" >
                    <option value="">--请选择出差类型--</option>
                    <option value="长期出差">长期出差</option>
                    <option value="短期出差">短期出差</option>
                </select>

                    <input type="submit" value="查询" />
                    <a href="/travel/toadd">申请出差</a>
                </form>
            </div>

            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">id</th>
                    <th width="10%">出差人</th>
                    <th width="10%">出差编号</th>
                    <th width="10%">出差城市</th>
                    <th width="10%">出差类型</th>
                    <th width="10%">出差人联系电话</th>
                    <th width="10%">出差内容</th>
                    <th width="10%">开始时间</th>
                    <th width="10%">截止时间</th>
                    <th >操作</th>
                </tr>
                <c:forEach items="${tvls}" var="tvl">
                    <tr>
                        <td>${tvl.tvlId}</td>
                        <td>${tvl.tvlName}</td>
                        <td>${tvl.tvlNo}</td>
                        <td>${tvl.tvlCity}</td>
                        <td>${tvl.tvlType}</td>
                        <td>${tvl.tvlPhone}</td>
                        <td>${tvl.tvlInfo}</td>
                        <td>${tvl.tvlStartTime}</td>
                        <td>${tvl.tvlEndTime}</td>
                        <td>
                            <a href="/travel/view?tvlId=${tvl.tvlId}"><img src="/img/look.png" alt="查看" title="查看"/></a>
                            <a href="/travel/toupdate?tvlId=${tvl.tvlId}"><img src="/img/xg.png" alt="修改" title="修改"/></a>
                            <a href="/travel/del?tvlId=${tvl.tvlId}" class="removeBill"><img src="/img/sc.png" alt="删除" title="删除"/></a>
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
                                submitUrl="${pageContext.request.contextPath}/tvl/findTvl?pageIndex={0}&tvlName=${tvl.tvlName}&tvlType=${tvl.tvlType}"/>

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