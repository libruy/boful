<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 13:57
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<div id="header" style="background:url(${resource(dir: 'images',file: 'topbg.gif')}) repeat-x;">

    <div class="topleft">
        <a href="main.html" target="_parent"><img src="${resource(dir: 'images',file: 'logo.gif')}" title="系统首页" /></a>
    </div>

    <ul class="nav">
        <li><a href="${createLink(controller: 'resource', action: 'index')}" class="${controllerName=='resource'?'selected':''}"><img src="${resource(dir: 'images', file: 'file.png')}" title="资源管理" /><h2>资源管理</h2></a></li>
        <li><a href="${createLink(controller: 'metadata', action: 'index')}" class="${controllerName=='metadata'?'selected':''}"><img src="${resource(dir: 'images', file: 'icon01.png')}" title="元数据管理" /><h2>元数据管理</h2></a></li>
        <li><a href="${createLink(controller: 'application', action: 'index')}" class="${controllerName=='application'?'selected':''}"><img src="${resource(dir: 'images', file: 'icon02.png')}" title="应用模块" /><h2>应用模块</h2></a></li>
        <li><a href="${createLink(controller: 'user', action: 'index')}" class="${controllerName=='user'?'selected':''}"><img src="${resource(dir: 'images', file: 'big_user.png')}" title="用户管理" /><h2>用户管理</h2></a></li>
        <li><a href="${createLink(controller: 'system', action: 'index')}" class="${controllerName=='system'?'selected':''}"><img src="${resource(dir: 'images', file: 'icon04.png')}" title="系统管理" /><h2>系统管理</h2></a></li>
        <li><a href="${createLink(controller: 'statistics', action: 'index')}" class="${controllerName=='statistics'?'selected':''}"><img src="${resource(dir: 'images', file: 'icon03.png')}" title="数据统计" /><h2>数据统计</h2></a></li>
    </ul>

    <div class="topright">
        <ul>
            <li><span><img src="${resource(dir: 'images',file: 'help.png')}" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
            <li><a href="#">关于</a></li>
            <li><a href="${createLink(controller: 'index', action: 'logout')}" target="_parent">退出</a></li>
        </ul>

        <div class="user">
            <span>admin</span>
        </div>

    </div>
</div>