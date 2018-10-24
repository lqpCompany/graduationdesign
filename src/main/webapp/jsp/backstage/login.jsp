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
    <link href="<%=basePath%>jsp/resources/css/index.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>jsp/resources/css/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>jsp/resources/jquery.js" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("button[name='login']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>backstage/login",
                    $("#myForm").serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        if(data.status == 1) {
                            window.location.href = "<%=basePath%>index.jsp";
                        }
                    }
                );
            });
        });
    </script>
</head>
<body>
        <jsp:include page="top.jsp"></jsp:include>
        <div class="part1">
            <p><a href="<%=basePath%>jsp/backstage/forget.jsp">注册》》</a></p>
            <div style="clear"></div>
        </div>
        <div class="part2">
            <div class="part2-con">
                <form id="myForm">
                    <div class="cont">
                        <p>手机号码</p>
                        <input type="text" name="phone" placeholder="请输入手机号码" pattern="^1[3,5,4,8,7]\d{9}$" required>
                        <img src="<%=basePath%>jsp/resources/images/name.png">
                    </div>
                    <div class="cont">
                        <p>密&nbsp;&nbsp;&nbsp;&nbsp;码</p>
                        <input type="password" name="password" placeholder="请输入密码" pattern="^[A-Za-z0-9]{6,20}" required>
                        <img src="<%=basePath%>jsp/resources/images/password.png">
                    </div>
                    <div class="zi">
                        <span><a href="#">短信验证登录</a></span>
                        <span><a href="reight.jsp">忘记密码？</a></span>
                        <div style="clear"></div>
                    </div>
                    <button type="button" id="button" name="login" >登录</button>
                    <p class="mfzc"><a href="forget.jsp">免费注册></a></p>
                    <div class="sec">
                        <span></span>
                        <span>使用一下账号登录</span>
                        <span></span>
                        <div style="clear"></div>
                    </div>
                    <div class="qq">
                        <ul>
                            <li><img src="<%=basePath%>jsp/resources/images/QQ.png"><span>QQ</span></li>
                            <li><img src="<%=basePath%>jsp/resources/images/weixin.png"><span>微信</span></li>
                            <li><img src="<%=basePath%>jsp/resources/images/zfb.png"><span>支付宝</span></li>
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
