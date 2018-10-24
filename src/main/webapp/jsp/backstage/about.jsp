<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/16 0016
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>6+2会员</title>
    <link href="<%=basePath%>jsp/resources/css/index.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>jsp/resources/css/center.css" rel="stylesheet" type="text/css" />
</head>
<body class="index account">
<jsp:include page="top.jsp"></jsp:include>
<div class="container">
    <div class="main">
        <div class="menu">
            <a href="#">购物记录</a>
            <a href="<%=basePath%>backstage/toUpdateCustomer">账户管理</a>
            <a href="about">联系我们</a>
            <a class="exit" id="exit" href="<%=basePath%>backstage/logout">安全退出</a>
        </div>
    </div>
</div>
    <div class="footer">
        <div class="foot">
            <p>2018，6+2购物网站 京ICP证070709号 | 电子公告服务规则</p>
            <p>广播电视台节目制作经营许可证 （京）字第0110号</p>
            <p>京公网安备13677788948号</p>
        </div>
    </div>
</body>
</html>
