<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 14:23
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>用户组管理</title>
    <meta name="layout" content="user">
</head>

<body>
<script src="${resource(dir: 'js/user', file: 'group.js')}" type="text/javascript"></script>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">用户管理</a></li>
        <li><a href="#">用户组管理</a></li>
    </ul>
</div>

<div class="rightinfo">
    <div class="left_tree" data-options="fit:true,border:false"
         style="width: 20%;float: left;border:solid 1px #b6cad2;margin: 0 5px;min-height: 600px;">
        <div style="margin:0;">
        <ul class="toolbar">
            <li onclick="clickAddGroup();"><span><img src="${resource(dir: 'images',file: 't01.png')}"></span>添加</li>
            <li onclick="clickModifyGroup();"><span><img src="${resource(dir: 'images',file: 't02.png')}"></span>修改</li>
            <li onclick="delGroup();"><span><img src="${resource(dir: 'images',file: 't03.png')}"></span>删除</li>
        </ul>
        </div>
        <div  style="padding-top: 40px;">
        <ul id="auth_tree" class="easyui-tree"></ul>
            </div>
    </div>

    <div class="right_table" style="width: 78%;float: left;">
       %{-- <div class="tools">

            <ul class="toolbar">
                <li class="click"><span><img src="${resource(dir: 'images',file: 't01.png')}"></span>添加角色</li>
                <li><span><img src="${resource(dir: 'images',file: 't03.png')}"></span>去除角色</li>
            </ul>
        </div>--}%
        <table id="group_table" class="easyui-datagrid"
               data-options="rownumbers: true,singleSelect:false,pagination:true">
            <thead>
            <tr>
                <th data-options="field:'id',width:'10%',checkbox:true">编号</th>
                <th data-options="field:'name',width:'20%',align:'center'">名称</th>
                <th data-options="field:'nickname',width:'25%',align:'center'">描述</th>
                <th data-options="field:'username',width:'30%',align:'center'">权限</th>
                <th data-options="field:'_operate',width:'20%',align:'center',formatter:formatOper">操作</th>
            </tr>
            </thead>
        </table>
    </div>
</div>

<script type="text/javascript">
    function formatOper(val, row, index) {
        return '<a class="tablelink" href="#" onclick="viewUser(' + row.id + ')">去除角色</a>';
    }

</script>

<div id="add_group_dlg" title="添加用户组" class="easyui-dialog" style="width: 400px; height: auto; padding: 10px 20px"
     data-options="closed:true,buttons:'#add_group_dlg-buttons'">
    <div class="formbody">
        <div class="formtitle"><span>添加用户组</span></div>
        <ul class="forminfo">
            <li><label>角色名</label><input id="name" name="name" class="dfinput easyui-validatebox" type="text"></li>
            <li><label>权限</label><input class="easyui-combobox" id="auths" name="auths" data-options="multiple:true,editable:false,required:true,valueField:'id',textField:'name',multiple:true,panelHeight:'100'" style="width:200px;height: auto"></li>
        </ul>
    </div>

    <div id="add_group_dlg-buttons">
        <input name="" class="btn" value="保存" type="button" onclick="addGroup();">
        <input name="" class="btn" value="关闭" type="button" onclick="javascript:$('#add_group_dlg').dialog('close')">
    </div>
</div>

</body>
</html>