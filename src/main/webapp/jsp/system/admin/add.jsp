<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>添加管理员</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("button[name='add']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>system/admin/doAddAdmin",
                    $("#myForm").serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        if(data.status == 1) {
                            window.location.href = "<%=basePath%>system/admin/toAddAdmin";
                            /*window.location.href = "system/admin/list";*/
                        }
                    }
                );
            });
        });
    </script>
</head>
<body>
<h3>添加管理员</h3>
<form class="form-horizontal" id="myForm">
    <div class="form-group" style="padding-top: 20px;">
        <label for="username" class="col-sm-1 control-label" >管理员名字</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="username" name="username">
        </div>
    </div>

    <div class="form-group" style="padding-top: 20px;">
        <label for="password" class="col-sm-1 control-label">密码</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="password" name="password">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="phone" class="col-sm-1 control-label">手机号码</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="phone" name="phone">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="phone" class="col-sm-1 control-label">昵称</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="name" name="name">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label class="col-sm-3 control-label"></label>
        <div class="col-sm-6">
            <button name="add" type="button" class="btn btn-primary">添加管理员</button>
        </div>
    </div>
</form>
</body>
</html>
