<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="${pageContext.request.contextPath}/"/>
<html>
<head>
    <title>6+2后台管理</title>
    <!-- 导入kindEditor所需插件 -->
    <link rel="stylesheet" href="<%=basePath%>jsp/plugins/kindeditor-4.1.10/themes/default/default.css" />
    <script src="<%=basePath%>jsp/plugins/kindeditor-4.1.10/kindeditor.js"></script>
    <script src="<%=basePath%>jsp/plugins/kindeditor-4.1.10/lang/zh_CN.js"></script>

    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/css/index.css" />
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />

</head>
<body>
<!-- //添加navbar-fixed-top可以让导航条一直固定在顶部，不会因为滚动条改变而改变，navbar-inverse让导航条黑底展示-->
<div class="navbar navbar-inverse navbar-fixed-top" style="background: #212121;">
    <div class="container">
        <div class="navbar-header">
            <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
            <a href="#" class="navbar-brand">6+2后台管理</a>
        </div>
        <ul class="nav navbar-nav h">
            <li class="active"><a href="<%=basePath%>system/admin/list">管理员管理</a></li>
            <li><a href="<%=basePath%>system/customer/toManageCustomer">用户管理</a></li>
            <li><a href="<%=basePath%>system/goods/MagesGoods">商品管理</a></li>
            <li><a href="order/mages.jsp">购物车管理</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">

            <li class="active"><a>当前用户[${sessionScope.admin.name}]</a></li>

            <li><button type="submit" class="btn" style="margin-top: 10px;color: black;"><a href="<%=basePath%>system/logout">退出</a></button></li>
        </ul>
    </div>
</div>

<div class="navbar navbar-duomi navbar-static-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" id="logo">
            </a>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                <li class="active">
                    <a href="#">
                        <i class="glyphicon glyphicon-th-large"></i>管理员
                    </a>
                </li>
                <li>
                    <a id="user" class="nav-header collapsed">
                        <i class="glyphicon glyphicon-user"></i>管理员管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="username" class="nav nav-list collapse secondmenu">
                        <li>
                            <a href="<%=basePath%>system/admin/list"><i class="glyphicon glyphicon-th-list"></i>所有管理员</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>system/admin/add"><i class="glyphicon glyphicon-plus"></i>添加管理员</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a id="admin1" class="nav-header collapsed">
                        <i class="glyphicon glyphicon-credit-card"></i>用户管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="admin" class="nav nav-list collapse secondmenu">
                        <li>
                            <a href="<%=basePath%>system/customer/toManageCustomer"><i class="glyphicon glyphicon-th-list"></i>所有用户</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>system/customer/add"><i class="glyphicon glyphicon-plus"></i>添加用户</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a id="goodstype1" class="nav-header collapsed">
                        <i class="glyphicon glyphicon-credit-card"></i>产品类型管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="goodstype" class="nav nav-list collapse secondmenu">
                        <li>
                            <a href="<%=basePath%>system/goodstype/toManageGoodsType"><i class="glyphicon glyphicon-th-list"></i>所有产品类型</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>system/goodstype/add"><i class="glyphicon glyphicon-plus"></i>添加产品类型</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a id="proudy1" class="nav-header collapsed">
                        <i class="glyphicon glyphicon-credit-card"></i>产品管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="proudy" class="nav nav-list collapse secondmenu">
                        <li>
                            <a href="<%=basePath%>system/goods/MagesGoods"><i class="glyphicon glyphicon-th-list"></i>所有产品</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>system/goods/AddGoodsType"><i class="glyphicon glyphicon-plus"></i>添加产品</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a id="shop1" class="nav-header collapsed">
                        <i class="glyphicon glyphicon-shopping-cart"></i>产品管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="shop" class="nav nav-list collapse secondmenu">
                        <li>
                            <a href="<%=basePath%>jsp/system/order/mages.jsp"><i class="glyphicon glyphicon-shopping-cart"></i>所有购物商品</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a id="exit1" class="nav-header collapsed">
                        <i class="glyphicon glyphicon-off"></i>退出系统
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="exit" class="nav nav-list collapse secondmenu">
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-log-in"></i>退出</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="col-md-10 main" id="sub-page" style="min-height: 600px;">

        </div>
    </div>
</div>
<script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
<script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript">

    //实现kindeditor弹出图片上传窗口
    KindEditor.ready(function(K) {
        var editor = K.editor({//图片上传
            //指定上传文件的服务器端程序。
            uploadJson:  '<%=basePath%>jsp/plugins/kindeditor-4.1.10/jsp/upload_json.jsp',
            //指定浏览远程图片的服务器端程序
            fileManagerJson: '<%=basePath%>jsp/plugins/kindeditor-4.1.10/jsp/file_manager_json.jsp',
            allowFileManager : true
        });
        K('#image1').click(function() {
            editor.loadPlugin('image', function() {//动态加载插件，image为插件名
                editor.plugin.imageDialog({
                    showLocal : true,//是否显示本地图片上传窗口
                    showRemote : true,//是否显示网络图片窗口
                    fillDescAfterUploadImage:false,//个人建议只在文本编辑器中使用true，true时图片上传成功后切换到图片编辑标签，false时插入图片后关闭弹出框。
                    imageUrl : K('#url1').val(),
                    clickFn : function(url, title, width, height, border, align) {
                        K('#url1').val(url);
                        editor.hideDialog();
                    }
                });
            });
        });
    });

    $(".h a").click(function () {
        var url=$(this).attr("href");
        $('#sub-page').load(url);
        return false;
    });
    $(".nav-list a").click(function () {
        var url=$(this).attr("href");
        $('#sub-page').load(url);
        return false;
    });


    $(".pagination li a").click(function () {
        var url=$(this).attr("href");
        $('#sub-page').load(url);
        return false;
    });
    $(function() {
        $('#sub-page').load("system/admin/list");
        $('#user').click(function () {
            $('#username').toggle();
        });
        $('#admin1').click(function () {
            $('#admin').toggle();
        });
        $('#goodstype1').click(function () {
            $('#goodstype').toggle();
        });
        $('#proudy1').click(function () {
            $('#proudy').toggle();
        });
        $('#shop1').click(function () {
            $('#shop').toggle();
        });
        $('#exit1').click(function () {
            $('#exit').toggle();
        });
    });
</script>
</body>
</html>
