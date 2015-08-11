<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/28
  Time: 8:17
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>添加（修改)用户</title>
    <meta name="layout" content="user">
</head>

<body>
<script type="text/javascript">
    $(document).ready(function(){
        $(".btn").click(function(){
            location.href = "/user/index";
        });
    });
</script>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">系统设置</a></li>
    </ul>
</div>
<div class="formbody">
    <div id="usual1" class="usual">
        <div class="itab">
            <ul>
                <li><a href="#tab1" class="  selected">添加（修改用户)</a></li>
            </ul>
        </div>
        <div class="tabson">
            <ul class="forminfo">
                <li><label>账号<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>
                <li><label>昵称<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>
                <li><label>用户密码<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="password"></li>
                <li><label>确认用户密码<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="password"></li>
                <li><label>角色<b>*</b></label>
                    <div class="usercity">
                        <div class="cityleft">
                            <div class="uew-select"><div style="width: 140px;" class="uew-select-value ue-state-default"><em class="uew-select-text">角色1</em><em class="uew-icon uew-icon-triangle-1-s"></em></div><select style="width: 345px;" class="select1">
                                <option>角色1</option>
                                <option>角色2</option>
                                <option>角色3</option>
                            </select></div>
                        </div>
                        <label>部门<b>*</b></label>
                        <div class="cityright">
                            <div class="uew-select"><div style="width: 140px;" class="uew-select-value ue-state-default"><em class="uew-select-text">部门1</em><em class="uew-icon uew-icon-triangle-1-s"></em></div><select style="width: 345px;" class="select1">
                                <option>部门1</option>
                                <option>部门2</option>
                                <option>部门3</option>
                            </select></div>
                        </div>
                    </div>
                </li>
                <li><label>姓名<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>

                <li><label>邮箱<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>
                <li><label>性别<b>*</b></label>
                    <div class="usercity">
                        <div class="cityleft">
                            <div class="uew-select"><div style="width: 140px;" class="uew-select-value ue-state-default"><em class="uew-select-text">男</em><em class="uew-icon uew-icon-triangle-1-s"></em></div><select style="width: 167px;" class="select2">
                                <option>男</option>
                                <option>女</option>
                            </select></div>
                        </div>
                        <label>学历<b>*</b></label>
                        <div class="cityright">
                            <div class="uew-select"><div style="width: 140px;" class="uew-select-value ue-state-default"><em class="uew-select-text">本科</em><em class="uew-icon uew-icon-triangle-1-s"></em></div><select style="width: 167px;" class="select2">
                                <option>大专</option>
                                <option>本科</option>
                                <option>研究生</option>
                                <option>博士</option>
                            </select></div>
                        </div>
                    </div>
                </li>
                <li><label>电话<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>
                <li><label>身份证<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>
                <li><label>账号有效时间<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text"></li>
                <li><label>网盘空间<b>*</b></label><input name="" class="dfinput" value="" style="width:518px;" type="text">G</li>
                %{--<li><label>描述信息<b>*</b></label>
                    <textarea id="content7" name="content" style="width: 518px; height: 250px; visibility: hidden; display: none;"></textarea>
                </li>--}%
                <li><label>&nbsp;</label><input name="" class="btn" value="提交" type="button">          &nbsp;           <input name="" class="btn" value="取消" type="button"></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>