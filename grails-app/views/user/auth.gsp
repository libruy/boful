<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 14:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>权限管理</title>
    <meta name="layout" content="user">
    <script src="${resource(dir:'js/user',file: 'auth.js')}" type="text/javascript"></script>
</head>

<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">用户管理</a></li>
        <li><a href="#">权限管理</a></li>
    </ul>
</div>
<div class="rightinfo">
    <div class="tools">

        <ul class="toolbar">
            <li onclick="$('#add_auth_dlg').dialog('open')"><span><img src="${resource(dir: 'images', file: 't01.png')}"></span>添加</li>
            <li onclick="delAuths();"><span><img src="${resource(dir: 'images', file: 't03.png')}"></span>删除</li>
        </ul>
    </div>
    <table id="auth_table" >
    </table>

</div>

<div id="add_auth_dlg" title="添加权限" class="easyui-dialog" style="width: 500px; height: auto; padding: 10px 20px"
     data-options="closed:true,buttons:'#add_auth_dlg-buttons'">
    <div class="formbody">
        <div class="formtitle"><span>添加权限</span></div>
        <ul class="forminfo">
            <li><label>权限名</label><input id="name" name="name" class="dfinput" type="text"></li>
            <li><label>英文缩写</label><input id="codename" name="codename" class="dfinput" type="text"></li>
        </ul>

    </div>
    <div id="add_auth_dlg-buttons">
        <input name="" class="btn" value="保存" type="button" onclick="javascript:addAuth();">
        <input name="" class="btn" value="关闭" type="button" onclick="javascript:$('#add_auth_dlg').dialog('close')">
    </div>
</div>

<div id="modify_auth_dlg" title="修改权限" class="easyui-dialog" style="width: 500px; height: auto; padding: 10px 20px"
     data-options="closed:true,buttons:'#modify_auth_dlg-buttons'">
    <div class="formbody">
        <div class="formtitle"><span>添加权限</span><input name="id" type="hidden"></div>
        <ul class="forminfo">
            <li><label>权限名</label><input name="name" class="dfinput" type="text"></li>
            <li><label>英文缩写</label><input name="codename" class="dfinput" type="text"></li>
        </ul>

    </div>
    <div id="modify_auth_dlg-buttons">
        <input name="" class="btn" value="保存" type="button" onclick="javascript:modifyAuth();">
        <input name="" class="btn" value="关闭" type="button" onclick="javascript:$('#modify_auth_dlg').dialog('close')">
    </div>
</div>

</body>
</html>