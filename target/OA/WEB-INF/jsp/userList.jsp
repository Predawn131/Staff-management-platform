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
    <link rel="stylesheet" href="/css/buttons.css">
    <link rel="stylesheet" href="/css/page.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/iconfont/iconfont.css">

    <script src="/js/jquery.js"></script>
    <script src="/js/js.js"></script>
    <script>
        function del (data) {
            var a = '/user/del?userId=' + data
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
                <ul>
                    <li class="nav-tab waves-effect">
                        <a href="/user/index" class="li-a " ><i class='iconfont icon-home'></i> 主页
                        </a>
                    </li>
                    <li class="nav-tab nav-ul a_active nav-show">
                        <a href="#" class="li-a active" ><i class='iconfont icon-bussiness-man'></i> 管理员
                            <i class='iconfont icon-arrow-right' style="float: right; transform: rotateZ(90deg); transition: all 0.5s ease 0s;"></i></a>
                        <div class="nav-box">
                            <a href="/user/findUser" class="li-a-a active">管理员列表</a>
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
                    <li class="nav-tab nav-ul">
                        <a href="#" class="li-a"><i class='iconfont icon-calendar'></i> 日志管理
                            <i class='iconfont icon-arrow-right' style="float: right;"></i></a>
                        <div class="nav-box">
                            <a href="/log/findLog" class="li-a-a">日志列表</a>
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
                <span>用户管理页面</span>
            </div>
            <div class="search">
                <form action="${pageContext.request.contextPath}/user/findUser">
                    <span>用户名：</span>
                    <input type="text" placeholder="请输入用户名" name="userName" value="${user.userName}" />
                    <span>真实姓名：</span>
                    <input type="text" placeholder="请输入真实姓名" name="userRelname" value="${user.userRelname}" />

                    <input type="submit" value="查询" class="button button-glow button-border button-rounded button-primary" />
                    <a href="/user/toadd" class="button button-glow button-border button-rounded button-primary">添加管理员</a>
                </form>

            </div>

            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">id</th>
                    <th width="10%">用户名</th>
                    <th width="10%">真实姓名</th>
                    <th width="15%">邮箱</th>
                    <th width="10%">性别</th>
                    <th width="10%">籍贯</th>
                    <th width="25%">操作</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.userName}</td>
                        <td>${user.userRelname}</td>
                        <td>${user.userEmail}</td>
                        <td>${user.userSex}</td>
                        <td>${user.userCity}</td>
                        <td class="caozuo">
                            <a href="/user/view?userId=${user.userId}" style="width: 60px;" class="button button-3d button-primary button-rounded">查看</a>
                            <a href="/user/toupdate?userId=${user.userId}" style="width: 60px;" class="button button-3d button-primary button-rounded">修改</a>
                            <input type="button" onclick="del(${user.userId})" class="button button-3d button-caution button-rounded" style="width: 60px;" value="删除">
                        </td>
                    </tr>
                </c:forEach>


            </table>
            <!-- 分页标签 -->
            <table class="page" cellpadding="0" cellspacing="0">
                <tr valign="top">
                    <td align="center" class="font3">
                        <yyf:pager pageIndex="${pageModel.pageIndex}" pageSize="${pageModel.pageSize}" recordCount="${pageModel.recordCount}"
                                   submitUrl="${pageContext.request.contextPath}/user/findUser?pageIndex={0}&userName=${user.userName}" />

                    </td>
                </tr>
            </table>

        </div>
    </div>
</div>

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