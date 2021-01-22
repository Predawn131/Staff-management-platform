<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>亚创企业信息管理平台</title>
    </head>
    <body>
        <table border="1" cellspacing="0"cellpadding="0">
            <tr>
                <td colspan="4">用户信息</td>

            </tr>
            <tr>
                <td>用户ID</td>
                <td>用户名</td>
                <td>密码</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${list}" var="uservo">
                <tr>
                    <td>${uservo.userId}</td>
                    <td><a href="#">${uservo.userName}</a></td>
                    <td>${uservo.userPw}</td>
                    <td><a href="#">修改</a>&nbsp;&nbsp;<a href="#">删除</a></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
