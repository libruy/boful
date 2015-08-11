<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 14:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>用户管理</title>
    <meta name="layout" content="user">
</head>

<body>
<script src="${resource(dir: 'js/user', file: 'user.js')}" type="text/javascript"></script>


<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">用户管理</a></li>
        <li><a href="#">用户列表</a></li>
    </ul>
</div>

<div class="rightinfo">
    <div class="tools">

        <ul class="toolbar">
            <li onclick="clickAddUser();"><span><img
                    src="${resource(dir: 'images', file: 't01.png')}"></span>添加</li>
            <li onclick="delUser();"><span><img src="${resource(dir: 'images', file: 't03.png')}"></span>删除</li>
        </ul>
    </div>


    <table id="user_table">

    </table>

</div>

<div id="add_user_dlg" title="添加用户" class="easyui-dialog" style="width: 500px; height: auto; padding: 10px 20px"
     data-options="closed:true,buttons:'#add_user_dlg-buttons'">
    <div class="formbody">
        <div class="formtitle"><span>添加用户</span></div>
        <ul class="forminfo">
            <li><label>账号</label><input name="name" class="dfinput" type="text" required="true"></li>
            <li><label>用户密码</label><input name="password" class="dfinput" type="password" required="true"></li>
            <li><label>邮箱</label><input name="email" class="dfinput" type="text"></li>
            <li><label>手机</label><input name="phone" class="dfinput" type="text"></li>
            <li><label>用户组</label><input class="easyui-combotree group_tree" required="true"  multiple="true" name="group" style="width:200px;"/></li>
            <li><label>卡号</label><input name="id_card" class="dfinput" type="text"></li>
            <li><label>性别</label><input class="easyui-combobox gender_combobox" data-options="valueField:'id',textField:'text',panelHeight:'auto'" name="gender" required="true"  style="width:200px;"></li>
            <li><label>学历</label><input class="easyui-combobox grade_combobox" data-options="valueField:'id',textField:'text',panelHeight:'auto'" name="grade" required="true"  style="width:200px;"></li>
            <li><label>存储尺寸</label><input name="disk_size" class="dfinput" type="text"></li>
            <li><label>备注</label><input name="description" class="dfinput" type="text"></li>
        </ul>

    </div>

    <div id="add_user_dlg-buttons">
        <input name="" class="btn" value="保存" type="button" onclick="addUser();">
        <input name="" class="btn" value="关闭" type="button" onclick="javascript:$('#add_user_dlg').dialog('close')">
    </div>
</div>
</body>
</html>