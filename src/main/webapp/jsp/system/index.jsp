<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>6+2后台管理</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/css/index.css" />
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(function() {
            $('#sub-page').load('customer/mages.jsp');

            var href = "${href}";
            if(href != '' && href != "#") {
                $('#sub-page').load(href);
            }
            $('.navbar-nav  a').click(function() {
                var href = $(this).attr('href');
                if(href != '' && href != "#") {
                    $('#sub-page').load(href);
                }
                return false;
            });
            $('.nav-list  a').click(function() {
                var href = $(this).attr('href');
                if(href != '' && href != "#") {
                    $('#sub-page').load(href);
                }
                return false;
            });
        });
    </script>
</head>
<body>
<!-- //添加navbar-fixed-top可以让导航条一直固定在顶部，不会因为滚动条改变而改变，navbar-inverse让导航条黑底展示-->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
            <a href="#" class="navbar-brand">6+2后台管理</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="customer/mages.jsp">用户管理</a></li>
            <li><a href="admin/mages.jsp">管理员</a></li>
            <li><a href="proudy/mages.jsp">商品管理</a></li>
            <li><a href="order/mages.jsp">购物车管理</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="#">当前用户[xxxx]</a></li>
            <li><a href="#">退出</a></li>
        </ul>
    </div>
</div>

<div class="navbar navbar-duomi navbar-static-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" id="logo">配置管理系统（流量包月）
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
                    <a href="#username" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-user"></i>用户管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="username" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li>
                            <a href="customer/mages.jsp"><i class="glyphicon glyphicon-th-list"></i>所有用户</a>
                        </li>
                        <li>
                            <a href="customer/add.jsp"><i class="glyphicon glyphicon-plus"></i>添加用户</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#admin" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-credit-card"></i>管理员管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="admin" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li>
                            <a href="admin/mages.jsp"><i class="glyphicon glyphicon-th-list"></i>所有管理员</a>
                        </li>
                        <li>
                            <a href="admin/add.jsp"><i class="glyphicon glyphicon-plus"></i>添加管理员</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#proudry" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-briefcase"></i>商品管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="proudry" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li>
                            <a href="proudy/mages.jsp"><i class="glyphicon glyphicon-th-list"></i>所有商品</a>
                        </li>
                        <li>
                            <a href="proudy/add.jsp"><i class="glyphicon glyphicon-plus"></i>添加商品</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#shop" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-shopping-cart"></i>购物车管理
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="shop" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li>
                            <a href="order/mages.jsp"><i class="glyphicon glyphicon-shopping-cart"></i>所有购物商品</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#exit" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-off"></i>退出系统
                        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                    </a>
                    <ul id="exit" class="nav nav-list collapse secondmenu" style="height: 0px;">
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
</body>
</html>
