<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head lang="en">
    <meta charset=utf-8">
    <title>系统登录 - 亚创企业信息管理平台</title>
    <link rel="stylesheet" type="text/css" href="/css/styleLogin.css" />
    <script>
        $('.button').click (
            function() {
                var formData = new FormData();
                var verify = $('#yzm').val();
                print(verify)
                //点击提交时，判断验证码是否为空，如果为空，提示输入验证码
                if (!verify) {
                    alert('请输入验证码');
                    return;
                }
                //如果不为空，将验证码塞进formData里面去
                formData.append('verify', verify);

                //不管提交成功与否，验证码都会更换
                $('#captcha_img').click();
            });
        function changeVerifyCode(img) {
            img.src = "../Kaptcha?" + Math.floor(Math.random() * 100);
        }
    </script>
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
                    <input type="text" name="userName" id="user" value="" autocomplete="off">
                </div>
                <div id="password" class="input" aria-placeholder="密码">
                    <input type="password" name="userPw" id="mima" value="">
                </div>
                <div id="verify" class="input" aria-placeholder="验证码">
                    <input type="text" name="verify" id="yzm" value="" autocomplete="off">
                    <img id="captcha_img" alt="点击更换" title="点击更换"
                         onclick="changeVerifyCode(this)" src="../Kaptcha"/>
                </div>
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