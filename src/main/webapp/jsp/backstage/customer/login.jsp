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
    <script type="application/javascript" src="css/jquery.js"></script>
    <script>
        $(function() {
            //当单击登录按钮时
            $("#log").click(function() {
                //使用ajax执行登录操作
                //第一个参数指要访问的服务端地址；
                //第二个参数，指要传递的表单的数据，$("#myForm").serialize()
                //第三个参数，function(data)用于接收服务端返回来的值，data
                $.post("<%=basePath%>backstage/login",//表示要跳转到的页面
                    $("#myform").serialize(),//初始化表单
                    function(data) {
                        //根据服务端返回来的值，判断登录是否成功
                        //获取的json数据是由Controller里面的map集合传过来
                        if(data.status==1){
                            //跳转的页面
                            alert("登录成功1");
                            $(location).attr('href', '<%=basePath%>index.jsp');

                        }else{
                            alert("登录失败1");
                            $(location).attr('href', 'loginerror.jsp');
                        }
                    });
            });
        });
    </script>
</head>
<body>
<iframe src="top.jsp" width="100%" height="30px" frameborder="0"></iframe>
<div class="part1">
    <p><a href="#">我要注册</a></p>
    <div style="clear"></div>
</div>
<div class="part2">
    <div class="part2-con">
        <form id="myform" method="post">
            <div class="cont">
                <input type="text" placeholder="用户名/手机/号邮箱/会员卡号" name="username">
                <img src="images/ren.png">
            </div>
            <div class="cont">
                <input type="text" placeholder="请输入密码" name="password">
                <img src="images/password.png">
            </div>
            <div class="zi">
                <span><a href="#">短信验证登录</a></span>
                <span><a href="forget.jsp">忘记密码？</a></span>
                <div style="clear"></div>
            </div>
            <div class="btn">
                <p id="log"><a>登录</a></p>
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
