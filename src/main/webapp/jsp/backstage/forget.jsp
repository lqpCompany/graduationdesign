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
    <title>用户注册</title>
    <link href="<%=basePath%>jsp/resources/css/index.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>jsp/resources/css/sigin.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>jsp/resources/jquery.js"></script>
    <script type="text/javascript">
            $(document).ready(function() {
                $("button[name='addCustomer']").click(function() {
                    var $myForm = $("#myForm");//获取指定a标签的jquery对象
                    $.post("<%=basePath%>backstage/frontendmanage/doAddCustomer",
                        $("#myForm").serialize(),
                        function(data) {
                            //jquery自带的json转换方法
                            if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                                data = $.parseJSON(data);
                            }
                            alert(data.myMessage);
                            if(data.status == 1) {
                                window.location.href = "<%=basePath%>backstage/frontendmanage/toAddCustomer";
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
    <p><a href="login.jsp">我已注册马上登录》》</a></p>
    <div style="clear"></div>
</div>
<div class="part2">
    <div class="part2-con">
        <form id="myForm" method="post" >
            <div class="cont">
                <p>姓&nbsp;&nbsp;名</p>
                <input type="text" name="username" id="username" placeholder="请输入姓名">
                <img src="<%=basePath%>jsp/resources/images/name.png" />
            </div>

            <div class="cont">
                <p>密&nbsp;&nbsp;码</p>
                <input type="password" name="password" id="password" placeholder="请输入密码">
                <img src="<%=basePath%>jsp/resources/images/password.png" />
            </div>

            <div class="cont">
                <p>手机号码</p>
                <input type="text" name="phone" id="phone" placeholder="请输入手机号">
                <img src="<%=basePath%>jsp/resources/images/phine.png" />
            </div>

            <div class="cont">
                <p>E-mali</p>
                <input type="email" name="email" id="email" placeholder="请输入emali">
                <img src="<%=basePath%>jsp/resources/images/emaile.png">
            </div>

            <div class="sec">
                <div class="zi">
                    <div style="clear"></div>
                    <img src="<%=basePath%>jsp/resources/images/gou.png"width="22">《6+2购物会员章程》《6+2支付协议》及《6+2广告联盟在线协议》
                </div>

                <button name="addCustomer" type="button">提交注册</button>
                <br>
                </br>
                <img src="<%=basePath%>jsp/resources/images/lou.png" width="20"><a>企业用户注册</a>
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
