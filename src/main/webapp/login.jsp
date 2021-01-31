<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8"><title>登录/注册</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
    <script src="js/validate.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="css/login.css" />
    <style>
        .error{
            color:red;
        }
    </style>
</head>
<body>
<%-- 隐藏域：存储项目发布路径 --%>
<input type="hidden" id="path" value="${pageContext.request.contextPath}" />
<div class="htmleaf-container">
    <div id="wrapper" class="login-page">
        <div id="login_form" class="form">
            <form class="register-form" method="post" action="user?method=regist" id="registForm">
                <input type="text"  placeholder="用户名" id="r_name" name="username" />
                <input type="password"  placeholder="密码" id="r_password" name="password" />
                <input type="password"  placeholder="确认密码" id="re_password" name="repassword" />
                <input type="text" placeholder="邮箱" id="r_email" name="email" />
                <input type="text" placeholder="联系方式" id="r_phone" name="phone" />
                <input type="text" placeholder="填写验证码" id="m" name="m" />
                <span id="yzm">点击发送验证码</span>
                <input type="submit" id="create" value="创建账户" ></button>
                <p class="message">已经有了一个账户? <a href="#">立刻登录</a></p>
            </form>
            <form class="login-form" method="post" action="UserServlet?method=loginByName">
                <input type="text" placeholder="用户名" id="user_name" name="username" />
                <input type="password" placeholder="密码" id="password" name="password" />
                <button id="login">登　录</button>
                <p class="message" >还没有账户? <a href="#">立刻创建</a></p>
            </form>
        </div>
    </div>
</div>
</body>
</html>