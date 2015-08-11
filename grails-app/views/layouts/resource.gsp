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
</head>
<body>
<div id="container">
    <g:include view="layouts/adminTop.gsp"/>
    <div id="main_content">
    <div id="sidebar" style="background:#f0f9fd;">
        <div class="lefttop"><span></span>资源管理</div>
        <dl class="leftmenu">
            <dd>
                <div class="title">
                    <span><img src="${resource(dir: 'images',file: 'leftico01.png')}" /></span>管理信息
                </div>
                <ul class="menuson">
                    <li class="${actionName=='index'?'active':''}"><cite></cite><a  href="${createLink(controller: 'resource', action: 'index')}">资源管理</a><i></i></li>
                    <li class="${actionName=='recycle'?'active':''}"><cite></cite><a href="${createLink(controller: 'resource', action: 'recycle')}">回收站</a><i></i></li>
                </ul>
            </dd>
        </dl>
    </div>
    <div id="content"> <g:layoutBody/></div>
    </div>
</div>
</body>

</html>