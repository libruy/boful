<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 2015/7/27
  Time: 14:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>资源管理</title>
    <meta name="layout" content="resource">
</head>

<body>
<script src="${resource(dir: 'js', file: 'resource.js')}" type="text/javascript"></script>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="computer.html">资源管理</a></li>
        <li><a href="#">列表</a></li>
    </ul>
</div>

<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <li class="click" onclick="$('#dlg').dialog('open')"><span><img
                    src="${resource(dir: 'images', file: 't01.png')}"></span>上传文件</li>
            <li class="click"><span><img src="${resource(dir: 'images', file: 't03.png')}"></span>删除</li>
        </ul>
    </div>
    <table class="filetable">
        <thead>
        <tr>
            <th><input name="" type="checkbox"/></th>
            <th width="25%">名称</th>
            <th width="11%">上传日期</th>
            <th width="10%">类型</th>
            <th width="6%">大小</th>
            <th width="48%">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f01.png')}"/>Adobe Dreamweaver CS5简体中文绿色</td>
            <td>2013/10/14 17:38</td>
            <td>文件夹</td>
            <td class="tdlast">0 KB</td>
            <td></td>
        </tr>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f01.png')}"/>Adobe Photoshop CS5</td>
            <td>2013/10/14 17:38</td>
            <td>文件夹</td>
            <td class="tdlast">30 KB</td>
            <td></td>
        </tr>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f01.png')}"/>PS形状</td>
            <td>2013/10/14 17:38</td>
            <td>文件夹</td>
            <td class="tdlast">0 KB</td>
            <td></td>
        </tr>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f01.png')}"/>Microsoft Office 2007中文版</td>
            <td>2013/10/14 17:38</td>
            <td>文件夹</td>
            <td class="tdlast">0 KB</td>
            <td></td>
        </tr>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f02.png')}"/>SWiSHmax.rar</td>
            <td>2013/10/14 17:38</td>
            <td>压缩文件</td>
            <td class="tdlast">125 KB</td>
            <td></td>
        </tr>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f02.png')}"/>autodesk3dsmax.zip</td>
            <td>2013/10/14 17:38</td>
            <td>压缩文件</td>
            <td class="tdlast">125 KB</td>
            <td></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f02.png')}"/>Adobe Photoshop CS5.rar</td>
            <td>2013/10/14 17:38</td>
            <td>压缩文件</td>
            <td class="tdlast">125 KB</td>
            <td></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f03.png')}"/>Thunder7.2.7.3496.exe</td>
            <td>2013/10/14 17:38</td>
            <td>程序</td>
            <td class="tdlast">125 KB</td>
            <td></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f03.png')}"/>福昕阅读器_5.1.0.1117.exe</td>
            <td>2013/10/14 17:38</td>
            <td>程序</td>
            <td class="tdlast">125 KB</td>
            <td></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f04.png')}"/>libeay32.ai</td>
            <td>2013/10/14 17:38</td>
            <td>设计软件</td>
            <td class="tdlast">125 KB</td>
            <td></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f05.png')}"/>php.ini.xls</td>
            <td>2013/10/14 17:38</td>
            <td>电子表格</td>
            <td class="tdlast">120 KB</td>
            <td></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td><img src="${resource(dir: 'images', file: 'f06.png')}"/>pws-php5cgi.reg</td>
            <td>2013/10/14 17:38</td>
            <td>注册表</td>
            <td class="tdlast">100 KB</td>
            <td></td>
        </tr>

        </tbody>

    </table>
</div>
</body>
</html>