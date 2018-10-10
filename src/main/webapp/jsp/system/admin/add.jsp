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
    <link rel="stylesheet" href="../count/bootstrap/css/bootstrap.min.css" />
    <script src="../count/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="../count/bootstrap/js/bootstrap.min.js" ></script>
</head>
<body>
<h3>添加管理员</h3>
<form class="form-horizontal" action="" enctype="multipart/form-data" method="post">
    <div class="form-group" style="padding-top: 20px;">
        <label for="name" class="col-sm-1 control-label" >管理员名字</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="name" name="name">
        </div>
    </div>

    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">密码</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="password" name="password">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">手机号码</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="phone" name="phone">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label class="col-sm-3 control-label"></label>
        <div class="col-sm-6">
            <button class="btn btn-primary btn-sm">确认添加</button>

        </div>
    </div>
</form>
</body>
</html>
