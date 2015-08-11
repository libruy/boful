<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 14:11
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle/>-邦丰资源管理系统</title>
    <g:include view="layouts/adminHead.gsp"/>
    <g:layoutHead/>
</head>
<body>
<div id="container">
    <g:include view="layouts/adminTop.gsp"/>
    <div id="main_content">
    <div id="sidebar" style="background:#f0f9fd;">
        <div class="lefttop"><span></span>用户管理</div>
        <dl class="leftmenu">
            <dd>
                <div class="title">
                    <span><img src="${resource(dir: 'images',file: 'leftico01.png')}" /></span>管理信息
                </div>
                <ul class="menuson">
                    <li class="${actionName=='index'?'active':''}"><cite></cite><a  href="${createLink(controller: 'user', action: 'index')}">用户管理</a><i></i></li>
                    <li class="${actionName=='group'?'active':''}"><cite></cite><a href="${createLink(controller: 'user', action: 'group')}">用户组管理</a><i></i></li>
                    <li class="${actionName=='role'?'active':''}"><cite></cite><a href="${createLink(controller: 'user', action: 'role')}" >角色管理</a><i></i></li>
                    <li class="${actionName=='auth'?'active':''}"><cite></cite><a href="${createLink(controller: 'user', action: 'auth')}" >权限管理</a><i></i></li>
                </ul>
            </dd>
        </dl>
    </div>
    <div id="content"> <g:layoutBody/></div>
    </div>
</div>
</body>

</html>