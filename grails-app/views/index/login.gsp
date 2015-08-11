<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 14:29
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>登录-邦丰资源管理系统</title>
<link href="${resource(dir: 'css',file: 'style.css')}" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${resource(dir: 'js',file: 'jquery.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'jquery.cookie.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js',file: 'cloud.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js',file: 'login.js')}" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
        $(window).resize(function () {
            $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
        })
    });
</script>

</head>

<body style="background-color:#1c77ac; background-image:url(${resource(dir:'images',file: 'light.png')}); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>


<div class="logintop">
    <span>欢迎登录后台管理界面平台</span>

    </div>

    <div class="loginbody">

    <span class="systemlogo"></span>

    <div class="loginbox">

    <ul>
    <li><input id="username" type="text" class="loginuser" /></li>
    <li><input id="password" type="password" class="loginpwd" /></li>
    <li><input id="btn_login" type="button" class="loginbtn" value="登录" /><label><input name="" type="checkbox" value="" checked="checked" />记住密码</label></li>
    </ul>


    </div>

    </div>



    <div class="loginbm">版权所有  2013  boful.com </div>
</body>
</html>