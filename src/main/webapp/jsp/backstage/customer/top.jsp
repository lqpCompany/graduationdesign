<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="CSS/index.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="font/font-awesome-4.7.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="JS/jquery.min.js" ></script>
    <script type="text/javascript" src="JS/index.js" ></script>
    <script>
        $(document).ready(function(){
            /*鼠标放到导航*/
            $('.nav li>a').mousemove(function(){
                $(this).css('color','red');
            });
            $('.nav li>a').mouseout(function(){
                $(this).css('color','#B7BCB8');
            });

            /*鼠标放到全部分类导航时改变字体颜色*/
            $('.navitems_next li>a').mousemove(function(){
                $(this).css('color','red');
            });
            $('.navitems_next li>a').mouseout(function(){
                $(this).css('color','#FFFFFF');
            });
        });
    </script>
</head>
<body>
<!--顶部-->
<div class="top">
    <!--顶部内容-->
    <div class="top_next">
        <ul class="nav">
            <li><a href="<%=basePath%>index.jsp" target="_parent">首页</a></li>
            <li class="shu"></li>
            <li><a href="jsp/backstage/customer/login.jsp" target="_parent">请登录</a></li>
            <li class="shu"></li>
            <li><a href="#">我的订单</a></li>
            <li class="shu"></li>
            <li><a href="#">6+2会员</a></li>
            <li class="shu"></li>
            <li><a href="#">联系客服</a></li>
            <li class="shu"></li>
            <li><a href="#">更多</a></li>
        </ul>
        <!--顶部内容框架结束 -->
    </div>
    <!--顶部框架结束 -->
</div>
</body>
</html>
