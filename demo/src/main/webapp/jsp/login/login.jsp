<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">

    <head>
        <meta charset="utf-8">
        <title>登录(Login)</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- CSS -->
        <link rel="stylesheet" href="/demo/css/reset.css">
        <link rel="stylesheet" href="/demo/css/supersized.css">
        <link rel="stylesheet" href="/demo/css/style.css">
		<script src="/demo/js/common/jquery-1.8.2.min.js" ></script>
        <script src="/demo/js/common/supersized.3.2.7.min.js" ></script>
        <script src="/demo/js/common/supersized-init.js" ></script>
        <script src="/demo/js/login/scripts.js" ></script>
    </head>

    <body>

        <div class="page-container">
            <h1>登录</h1>
            <input type="text" name="username" class="username" placeholder="请输入您的用户名！">
            <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
            <input type="Captcha" class="Captcha" name="Captcha" placeholder="请输入验证码！">
            <button type="submit" class="submit_button">登录</button>
            <div class="error"><span>+</span></div>         
        </div>	
    </body>

</html>
