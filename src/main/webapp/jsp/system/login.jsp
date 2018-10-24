<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/css/login.css" />
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("button[name='login']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>system/login",
                    $("#myForm").serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        //提示控制层传来的json数据
                        alert(data.myMessage);
                        if(data.status == 1) {
                            window.location.href = "admin/toManageAdmin";
                        }
                    }
                );
            });
        });
    </script>
</head>
<body>
<div class="sucaihuo-container">
    <div class="demo form-bg" style="padding: 20px 0;">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <form class="form-horizontal" id="myForm">
                        <span class="heading">管理员登录</span>
                        <div class="form-group">
                            <input id="inputName" class="form-control" placeholder="请输入名字" type="text" name="username"/>
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="form-group help">
                            <input id="inputPassword" class="form-control" placeholder="请输入密码" type="password" name="password"/>
                            <i class="fa fa-lock"></i>
                            <a href="#" class="fa fa-question-circle"></a>
                        </div>
                        <div class="form-group">
                            <div class="main-checkbox">
                                <input id="checkbox1" value="None" name="check" type="checkbox" />
                                <label for="checkbox1"></label>
                            </div>
                            <span class="text">记住管理员</span>
                            <button class="btn btn-default" type="button" name="login">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
