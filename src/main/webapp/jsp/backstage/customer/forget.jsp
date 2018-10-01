<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/1
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>找回密码</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<iframe src="top.jsp" width="100%" height="30px" frameborder="0"></iframe>
<div class="part1">
    <p><a href="login.jsp">我已注册马上登录</a></p>
    <div style="clear"></div>
</div>
<div class="part2">
    <div class="part2-con">
        <form action="" method="post">
            <div class="cont">
                <input type="text" placeholder="请输入用户名">
                <img src="images/ren.png">
            </div>
            <div class="cont">
                <input type="text" placeholder="请输入密保">
                <img src="images/password.png">
            </div>
            <div class="cont">
                <input type="text" placeholder="请设置密码">
                <img src="images/password.png">
            </div>
            <div class="cont">
                <input type="text" placeholder="请确认密码">
                <img src="images/password.png">
            </div>
            <div class="sec">
                <div class="zi">
                    <div style="clear"></div>
                    <img src="images/gou.png"width="22px">《6+2购物会员章程》《6+2支付协议》及《6+2广告联盟在线协议》
                </div>
                <div class="btn">
                    <p><a href="#">找回密码</a></p>
                </div>
                <br>
                </br>
                <img src="images/lou.png" width="20px"><a href="#">企业用户注册</a>
                <div class="sec">
                    <div style="clear"></div>
                </div>
        </form>
    </div>
</div>
</div>
<iframe src="footer.jsp" width="100%" height="250px" scrolling="no" frameborder="0"></iframe>
</body>
</html>
