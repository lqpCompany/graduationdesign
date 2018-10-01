<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/1
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>头部内容</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--顶部-->
<div class="top">
    <!--顶部-->
    <div class="top">
        <!--顶部内容-->
        <div class="top_next">
            <ul class="nav">
                <li><a href="<%=basePath%>index.jsp" target="_parent">首页</a></li>
                <li><a href="login.jsp" target="_parent">请登录</a></li>
                <li><a>购物车</a></li>
                <li><a>6+2会员</a></li>
                <li><a>我的订单</a></li>
                <li><a>联系客服</a></li>
                <li><a>更多</a></li>
            </ul>
            <!--顶部内容框架结束 -->
        </div>
        <!--顶部框架结束 -->
    </div>
</body>
</html>
