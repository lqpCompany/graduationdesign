<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>添加产品</title>
    <link rel="stylesheet" href="../count/bootstrap/css/bootstrap.min.css" />
    <script src="../count/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="../count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(function() {
            $('#pic').change(function() {
                var files = this.files, file;
                if(files && files.length) {
                    file = files[0];
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#pic-view').attr({'src': e.target.result});
                    };
                    reader.readAsDataURL(file);
                } else {
                    $.alert("请选择图片文件");
                }
            });
        });
    </script>
</head>
<body>
<h3>添加商品</h3>
<form class="form-horizontal" action="" enctype="multipart/form-data" method="post">
    <div class="form-group" style="padding-top: 20px;">
        <label for="name" class="col-sm-1 control-label" >名称</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="name" name="name">
        </div>
    </div>

    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">价格</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="password" name="password">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">原价</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="phone" name="phone">
        </div>
    </div>
    <div class="form-group">
        <label for="pic" class="col-sm-1 control-label">产品图片</label>
        <div class="col-sm-6">
            <input class="form-control" id="pic" type="file" >
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label"></label>
        <div class="col-sm-6">
            <img class="img-thumbnail" id="pic-view" alt="" src="#" style="width: 90px;height: 90px;">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">描述</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="detial"></textarea>
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
