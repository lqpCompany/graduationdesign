<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/1
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>用户登录</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<iframe src="top.jsp" width="100%" height="30px" frameborder="0"></iframe>
<div class="part1">
    <p><a href="#">我要注册</a></p>
    <div style="clear"></div>
</div>
<div class="part2">
    <div class="part2-con">
        <form action="" method="post">
            <div class="cont">
                <input type="text" placeholder="用户名/手机/号邮箱/会员卡号">
                <img src="images/ren.png">
            </div>
            <div class="cont">
                <input type="text" placeholder="请输入密码">
                <img src="images/password.png">
            </div>
            <div class="zi">
                <span><a href="#">短信验证登录</a></span>
                <span><a href="forget.jsp">忘记密码？</a></span>
                <div style="clear"></div>
            </div>
            <div class="btn">
                <p><a href="#">登录</a></p>
            </div>
            <p class="mfzc"><a href="#">免费注册 有惊喜></a></p>
            <div class="sec">
                <span></span>
                <span>使用一下账号登录</span>
                <span></span>
                <div style="clear"></div>
            </div>
            <div class="qq">
                <ul>
                    <li><img src="images/QQ.png"><span>QQ</span></li>
                    <li><img src="images/weixin.png"><span>微信</span></li>
                    <li><img src="images/zfb.png"><span>支付宝</span></li>
                    <li><span>门店会员卡</span></li>
                    <div style="clear"></div>
                </ul>
            </div>
        </form>
    </div>
</div>
<iframe src="footer.jsp" width="100%" height="300px" scrolling="no" frameborder="0"></iframe>
</body>
</html>
