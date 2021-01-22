<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <h2>欢迎登录</h2>
    <form action="/user/checkUser" method="post">
    <table border="1" cellspacing="0">
        <tr>
            <td colspan="2">登录</td>
        </tr>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="userPw"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="点击提交"/></td>
        </tr>

    </table>
    </form>
</body>
</html>
