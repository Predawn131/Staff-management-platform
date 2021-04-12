﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="/css/buttons.css">
    <link rel="stylesheet" href="/css/page.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/iconfont/iconfont.css">
    <script>
        function del (data) {
            var a = '/log/del?logId=' + data
            $('.zhezhao').css('display', 'block');
            $('<div class="removerChid">' +
                '<h2>提示</h2>' +
                '<div class="removeMain">' +
                '<p>你确定要删除该数据吗？</p>' +
                '<a href="' + a + '" id="yes">确定</a>' +
                '<a href="#" id="no">取消</a>' +
                '</div>' +
                '</div>').appendTo('.remove');
            $('#removeBi').fadeIn();
            $('#no').click(function () {
                $('.zhezhao').css('display', 'none');
                $('#removeBi').fadeOut();
                $('.remove').empty();
            });
            $('#yes').click(function () {
                $('.zhezhao').css('display', 'none');
                $('#removeBi').fadeOut();
                $('.remove').empty();
            });
        }
    </script>
</head>
<body>
<div class="page" id="app">
    <div class="nav-left" v-show="navLeftFlag" ref="navLeft">
        <div class="LogoName">
            亚信企业职工信息管理平台
        </div>
        <div class="navDiv">
            <div class="navName">导航</div>
            <div class="nav-list">
                <c:if test="${userinfo.power == 0}">
                    <ul>
                        <li class="nav-tab waves-effect">
                            <a href="/user/index" class="li-a active" ><i class='iconfont icon-home'></i> 主页
                            </a>
                        </li>

                        <li class="nav-tab nav-ul">
                            <a href="#" class="li-a"><i class='iconfont icon-tongxunlu'></i> 职工管理
                                <i class='iconfont icon-arrow-right' style="float: right;"></i></a>
                            <div class="nav-box">
                                <a href="/emp/findEmp" class="li-a-a">职工列表</a>
                                <a href="/emp/toadd" class="li-a-a">添加职工</a>
                            </div>
                        </li>

                        <li class="nav-tab nav-ul">
                            <a href="#" class="li-a">
                                <i class='iconfont icon-earth'></i> 出差管理
                                <i class='iconfont icon-arrow-right' style="float: right;"></i>
                            </a>
                            <div class="nav-box">
                                <a href="/travel/findTvl" class="li-a-a">出差列表</a>
                                <a href="/travel/toadd" class="li-a-a">出差派遣</a>
                            </div>
                        </li>

                        <li class="nav-tab waves-effect">
                            <a href="/user/toupdatePw" class="li-a active" ><i class='iconfont icon-tool-hardware'></i> 修改密码
                            </a>
                        </li>
                        <li class="nav-tab waves-effect">
                            <a href="/user/exit" class="li-a active" ><i class='iconfont icon-switch'></i> 退出
                            </a>
                        </li>
                    </ul>

                </c:if>
                <c:if test="${userinfo.power == 1}">
                    <ul>
                        <li class="nav-tab waves-effect">
                            <a href="/user/index" class="li-a active" ><i class='iconfont icon-home'></i> 主页
                            </a>
                        </li>
                        <li class="nav-tab nav-ul">
                            <a href="#" class="li-a" ><i class='iconfont icon-bussiness-man'></i> 管理员
                                <i class='iconfont icon-arrow-right' style="float: right;"></i></a>
                            <div class="nav-box">
                                <a href="/user/findUser" class="li-a-a">管理员列表</a>
                                <a href="/user/toadd" class="li-a-a">添加管理员</a>
                            </div>
                        </li>
                        <li class="nav-tab nav-ul">
                            <a href="#" class="li-a"><i class='iconfont icon-tongxunlu'></i> 职工管理
                                <i class='iconfont icon-arrow-right' style="float: right;"></i></a>
                            <div class="nav-box">
                                <a href="/emp/findEmp" class="li-a-a">职工列表</a>
                                <a href="/emp/toadd" class="li-a-a">添加职工</a>
                            </div>
                        </li>
                        <li class="nav-tab nav-ul">
                            <a href="#" class="li-a"><i class='iconfont icon-layers'></i> 部门管理
                                <i class='iconfont icon-arrow-right' style="float: right;"></i></a>
                            <div class="nav-box">
                                <a href="/dept/findDept" class="li-a-a">部门列表</a>
                                <a href="/dept/toadd" class="li-a-a">添加部门</a>
                            </div>
                        </li>
                        <li class="nav-tab nav-ul">
                            <a href="#" class="li-a">
                                <i class='iconfont icon-earth'></i> 出差管理
                                <i class='iconfont icon-arrow-right' style="float: right;"></i>
                            </a>
                            <div class="nav-box">
                                <a href="/travel/findTvl" class="li-a-a">出差列表</a>
                                <a href="/travel/toadd" class="li-a-a">出差派遣</a>
                            </div>
                        </li>
                        <li class="nav-tab nav-ul a_active nav-show">
                            <a href="#" class="li-a active"><i class='iconfont icon-calendar'></i> 日志管理
                                <i class='iconfont icon-arrow-right' style="float: right; transform: rotateZ(90deg); transition: all 0.5s ease 0s;"></i></a>
                            <div class="nav-box">
                                <a href="/log/findLog" class="li-a-a active">日志列表</a>
                                <a href="/log/toadd" class="li-a-a">添加日志</a>
                            </div>
                        </li>
                        <li class="nav-tab waves-effect">
                            <a href="/user/toupdatePw" class="li-a active" ><i class='iconfont icon-tool-hardware'></i> 修改密码
                            </a>
                        </li>
                        <li class="nav-tab waves-effect">
                            <a href="/user/exit" class="li-a active" ><i class='iconfont icon-switch'></i> 退出
                            </a>
                        </li>
                    </ul>

                </c:if>

            </div>
        </div>
    </div>
    <div class="nav-right" ref="navRight">
        <div class="nav-top">
            <button type="button" class="btn btn-primary btn-sm hiddenBtn" style="line-height: 35px;height: 35px;padding: 1px 8px;" @click="isShowLeft">
                <i class="iconfont icon-modular" style="font-size: 19px;"></i>
            </button>
            <p style="font-size: 19px;font-weight: 600; float:right; position: relative; right: 40%; height: 40px;line-height: 40px;margin: 0;">亚信企业职工信息管理平台</p>

            <i class="iconfont icon-xinxibar_zhanghu" style="font-size: 27px; float: right; right: -170px;position: relative;">
                <span style="font-size: 20px;height: 40px;line-height: 40px;">${userinfo.userName}</span>
            </i>
        </div>
        <div class="content-page" ref="cPage">
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
                    <input type="submit" value="查询" class="button button-glow button-border button-rounded button-primary"/>
                    <a href="/log/toadd" class="button button-glow button-border button-rounded button-primary">添加日志</a>
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
                        <td class="caozuo">
                            <a href="/log/view?logId=${log.logId}" style="width: 60px;" class="button button-3d button-primary button-rounded">查看</a>
                            <a href="/log/toupdate?logId=${log.logId}" style="width: 60px;" class="button button-3d button-primary button-rounded">修改</a>
                            <input type="button" onclick="del(${log.logId})" class="button button-3d button-caution button-rounded" style="width: 60px;" value="删除">
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
    </div>
</div>

<%--<input type="checkbox" id="check">--%>
<%--<label for="check">--%>
<%--    <i class="menu" id="btn"></i>--%>
<%--    <i class="fas fa-times" id="cancel"></i>--%>
<%--</label>--%>
<%--<div class="sidebar">--%>
<%--    <header>功能列表</header>--%>
<%--    <ul class="list">--%>
<%--        <li><a href="/user/findUser">管理员</a></li>--%>
<%--        <li><a href="/emp/findEmp">员工管理</a></li>--%>
<%--        <li><a href="/dept/findDept">部门管理</a></li>--%>
<%--        <li><a href="/travel/findTvl">出差记录</a></li>--%>
<%--        <li><a href="/travel/toadd">出差记录添加</a></li>--%>
<%--        <li id="active"><a href="/log/findLog">企业运营日志</a></li>--%>
<%--        <li><a href="/log/toadd">上传日志</a></li>--%>
<%--        <li><a href="/user/toupdatePw">密码修改</a></li>--%>
<%--        <li><a href="/user/exit">退出系统</a></li>--%>
<%--    </ul>--%>
<%--</div>--%>
<%--<section>--%>
<%--    <!--头部-->--%>
<%--    <header class="publicHeader">--%>
<%--        <h1>亚创企业信息管理平台</h1>--%>

<%--    </header>--%>
<%--    <!--时间-->--%>
<%--    <div class="publicTime">--%>
<%--        <span id="time">2020年11月20日 11:11 星期一</span>--%>
<%--        <div class="publicHeaderR">--%>
<%--            <p><span id="hours">下午好！</span><span style="color: #fff21b"> ${userinfo.userName}</span> , 欢迎你！</p>--%>
<%--            <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--        <div class="right">--%>
<%--            <div class="location">--%>
<%--                <strong>你现在所在的位置是:</strong>--%>
<%--                <span>日志管理页面</span>--%>
<%--            </div>--%>
<%--            <div class="search">--%>
<%--                <form action="${pageContext.request.contextPath}/log/findLog">--%>
<%--                    <span>填写人姓名：</span>--%>
<%--                    <input type="text" placeholder="请输入填写人姓名" name="logPerson" value=""/>--%>

<%--                    <span>日志标题：</span>--%>
<%--                    <input type="text" placeholder="请输入日志标题" name="logTitle" value=""/>--%>

<%--                    <span>日志类型：</span>--%>
<%--                    <select name="logType" >--%>
<%--                        <option value="">--请选择日志类型--</option>--%>
<%--                        <option value="紧急日志">紧急日志</option>--%>
<%--                        <option value="日常日志">日常日志</option>--%>
<%--                    </select>--%>
<%--                    <input type="submit" value="查询" class="button button-glow button-border button-rounded button-primary"/>--%>
<%--                    <a href="/log/toadd" class="button button-glow button-border button-rounded button-primary">添加日志</a>--%>
<%--                </form>--%>

<%--            </div>--%>
<%--            <!--账单表格 样式和供应商公用-->--%>
<%--            <table class="providerTable" cellpadding="0" cellspacing="0">--%>
<%--                <tr class="firstTr">--%>
<%--                    <th width="10%">日志编号</th>--%>
<%--                    <th width="20%">日志标题</th>--%>
<%--                    <th width="10%">日志内容</th>--%>
<%--                    <th width="10%">填写人</th>--%>
<%--                    <th width="10%">日志类型</th>--%>
<%--                    <th width="10%">上传时间</th>--%>
<%--                    <th width="30%">操作</th>--%>
<%--                </tr>--%>
<%--                <c:forEach items="${logs}" var="log">--%>
<%--                    <tr>--%>
<%--                        <td>${log.logId}</td>--%>
<%--                        <td>${log.logTitle}</td>--%>
<%--                        <td>${log.logInfo}</td>--%>
<%--                        <td>${log.logPerson}</td>--%>
<%--                        <td>--%>

<%--                            <c:if test="${log.logType == '紧急日志'}">--%>
<%--                                <font color="red">紧急日志</font>--%>
<%--                            </c:if>--%>
<%--                            <c:if test="${log.logType == '日常日志'}">--%>
<%--                                日常日志--%>
<%--                            </c:if>--%>
<%--                        </td>--%>
<%--                        <td>${log.logTime}</td>--%>
<%--                        <td class="caozuo">--%>
<%--                            <a href="/log/view?logId=${log.logId}" style="width: 60px;" class="button button-3d button-primary button-rounded">查看</a>--%>
<%--                            <a href="/log/toupdate?logId=${log.logId}" style="width: 60px;" class="button button-3d button-primary button-rounded">修改</a>--%>
<%--                            <input type="button" onclick="del(${log.logId})" class="button button-3d button-caution button-rounded" style="width: 60px;" value="删除">--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>


<%--            </table>--%>
<%--            <table class="page" cellpadding="0" cellspacing="0">--%>
<%--                <tr valign="top">--%>
<%--                    <td align="center" class="font3">--%>
<%--                        <yyf:pager--%>
<%--                                pageIndex="${pageModel.pageIndex}"--%>
<%--                                pageSize="${pageModel.pageSize}"--%>
<%--                                recordCount="${pageModel.recordCount}"--%>
<%--                                submitUrl="${pageContext.request.contextPath}/log/findLog?pageIndex={0}&logPerson=${log.logPerson}&logTitle=${log.logTitle}"/>--%>

<%--                    </td>--%>
<%--                </tr>--%>
<%--            </table>--%>
<%--        </div>--%>
<%--    </section>--%>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">

</div>


<script src="/js/vue.min.js"></script>
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<%--<script src="/js/time.js"></script>--%>
<script type="text/javascript">
    $(function() {
        let navflag = false;
        $('.nav-tab').click(function() {
            $(this).siblings().each(function() {
                $(this).removeClass('a_active');
                // $(this).removeClass('a_active');
                $(this).find('.nav-box').css('height', '0')
                //关闭右侧箭头
                if ($(this).attr('class').indexOf('nav-ul') != -1) {
                    $(this).find('.icon-arrow-right').css('transform', 'rotateZ(0deg)')
                    $(this).find('.icon-arrow-right').css('transition', 'all .5s')
                    $(this).removeClass('nav-show')
                    // $(this).find('div').removeClass('nav-box')
                }
            })
            //当前选中
            $(this).addClass('a_active')
            $(this).find('.li-a').addClass('active')
            // 打开右侧箭头
            $(this).find('.icon-arrow-right').css('transform', 'rotateZ(90deg)')
            $(this).find('.icon-arrow-right').css('transition', 'all .5s')
            $(this).addClass('nav-show')
            // $(this).find('div').addClass('nav-box')
        })
        /* 二级菜单a点击事件 */
        $(".li-a-a").click(function() {
            $(".li-a-a").each(function() {
                $(this).removeClass('active-li-a');
            })
            $(this).addClass('active-li-a');
        })

    })
    const vue = new Vue({
        el: '#app',
        data: {
            navLeftFlag: true
        },
        methods: {
            isShowLeft() {
                if (this.navLeftFlag ) {
                    this.$refs.navRight.style.paddingLeft = '0px'
                    this.$refs.cPage.style.left = '0px';
                    this.navLeftFlag = false;
                    // this.$refs.navLeft.style.width = '0px';
                    // setTimeout(()=>{
                    // 	this.navLeftFlag = false;
                    // },200)
                } else {
                    this.$refs.navRight.style.paddingLeft = '240px';
                    this.$refs.cPage.style.left = '240px';
                    this.navLeftFlag = true;
                    // this.$refs.navLeft.style.width = '240px';
                    // setTimeout(()=>{
                    // 	this.navLeftFlag = true;
                    // },200)
                }
            }
        }
    })
</script>

</body>
</html>