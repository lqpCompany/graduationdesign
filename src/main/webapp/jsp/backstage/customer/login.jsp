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
    <link href="CSS/index.css" rel="stylesheet" type="text/css" />
    <link href="CSS/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="JS/jquery.min.js" ></script>
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
        <jsp:include page="top.jsp"></jsp:include>
        <div class="part1">
            <p><a href="forget.jsp">注册》》</a></p>
            <div style="clear"></div>
        </div>
        <div class="part2">
            <div class="part2-con">
                <form action="" method="post">
                    <div class="cont">
                        <p>手机号码</p>
                        <input type="text" placeholder="请输入手机号码">
                        <img src="images/name.png">
                    </div>
                    <div class="cont">
                        <p>密&nbsp;&nbsp;&nbsp;&nbsp;码</p>
                        <input type="text" placeholder="请输入密码">
                        <img src="images/password.png">
                    </div>
                    <div class="zi">
                        <span><a href="#">短信验证登录</a></span>
                        <span><a href="reight.jsp">忘记密码？</a></span>
                        <div style="clear"></div>
                    </div>
                    <div class="btn">
                        <p>登录</p>
                    </div>
                    <p class="mfzc"><a href="forget.jsp">免费注册></a></p>
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
        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
