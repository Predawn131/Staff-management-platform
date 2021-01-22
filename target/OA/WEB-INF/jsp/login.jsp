<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head lang="en">
    <meta charset=utf-8">
    <title>系统登录 - 亚创企业信息管理平台</title>
    <link rel="stylesheet" type="text/css" href="/css/styleLogin.css" />
</head>
<body>
<div class="container">
    <div class="panel">
        <div class="content">
            <div class="switch">
                <h1 id="login">登录</h1>
            </div>

            <form method="post" action="/user/checkUser"  class="login">
                <div id="userName" class="input" aria-placeholder="用户名">
                    <input type="text" name="userName" id="user" value="" >
                </div>
                <div id="password" class="input" aria-placeholder="密码">
                    <input type="password" name="userPw" id="mima" value="">
                </div>

        <p>
            <a id="signUp" href="UserSignUp.html" class="input">跳转注册</a>
        </p>
        <button type="submit" class="button">登录</button>
        </form>
    </div>
</div>
</div>

</body>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function () {
        $('.panel').css("display","none")
        $('.panel').slideDown(2000);
    })


    $('.input input').on('focus',function () {
        $(this).parent().addClass('focus');
    })

    $('.input input').on('blur',function () {
        if($(this).val() === '')
            $(this).parent().removeClass('focus');
    })
</script>
</html>