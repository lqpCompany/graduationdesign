<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 22:58
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
    <link rel="stylesheet" href="CSS/index.css" />
    <link rel="stylesheet" href="CSS/forget.css" />
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<div class="part1">
    <p><a href="login.jsp">登录》》</a></p>
    <div style="clear"></div>
</div>
<div class="part2">
    <div class="part2-con">
        <form action="" method="post">
            <div class="cont">
                <p>姓&nbsp;&nbsp;名</p>
                <input type="text" placeholder="请输入用户名">
                <img src="images/name.png" />

            </div>
            <div class="cont">
                <p>手机号码</p>
                <input type="text" placeholder="请输入手机号码">
                <img src="images/mibao.png" />
            </div>
            <div class="cont">
                <p>设置密码</p>
                <input type="text" placeholder="请设置密码">
                <img src="images/password.png" />
            </div>
            <div class="sec">
                <div class="zi">

                    <div style="clear"></div>
                    <img src="images/gou.png"width="22">《6+2购物会员章程》《6+2支付协议》及《6+2广告联盟在线协议》
                </div>

                <div class="btn">

                    <p><a href="#">找回密码</a></p>
                </div>
                <br>
                </br>
                <img src="images/lou.png" width="20"><a>企业用户注册</a>
                <div class="sec">

                    <div style="clear"></div>
                </div>

        </form>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
