<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17 0017
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>头部</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/resources/css/index.css" />
    <link rel="stylesheet" href="<%=basePath%>jsp/resources/font/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<!--搜索框开始-->
<div id="header">
    <div class="header_next">
        <!--放置logo-->
        <div class="logo">
            <img src="<%=basePath%>jsp/resources/images/logo.jpg" />
        </div>
        <!--搜索框-->
        <div id="search">
            <div class="search_next">
                <div class="form">
                    <input type="text" class="cla" />
                </div>

                <button class="sousuo">

                    <div class="sousuo_next">搜索</div>

                </button>

            </div>
        </div>
        <!--购物车-->
        <div class="shopping ">
            <div class="shopping_next">
                <!--这里写内容-->
                <a href="">
                    <div class="gouwu">
                        <ul class="ziti">我的购物车</ul>
                    </div>
                    <img src="<%=basePath%>jsp/resources/images/gouwu.png" />
                </a>
            </div>
        </div>
        <!--商品分类-->

    </div>
    <!--搜索框结束-->
</div>
<!--中部框架开始-->
<div id="central_top">
    <div class="central_top_c1 central_top_c2">
        <div class="navitems" style="margin-left: 10.5%">
            <div class="fl">全部分类</div>
            <div class="dh">
                <ul class="navitems_next">
                    <li><a href="#">秒杀</a></li>
                    <li><a href="#">优惠券</a></li>
                    <li><a href="#">闪购</a></li>
                    <li><a href="#">大聚会</a></li>
                    <li><a href="#">生活家电</a></li>
                    <li><a href="#">今日新品</a></li>
                    <li><a href="#">6+2服饰</a></li>
                    <li><a href="#">6+2超市</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
