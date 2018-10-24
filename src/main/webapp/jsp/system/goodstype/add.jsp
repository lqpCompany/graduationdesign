<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>添加商品类型</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("button[name='add']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>system/goodstype/doAddGoodsType",
                    $("#myForm").serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        /*  if(data.status == 1) {
                              window.location.href = "system/customer/toManageCustomer";
                           }*/
                    }
                );
            });
        });
    </script>
</head>
<body>
<h3>添加商品类型</h3>
<form class="form-horizontal" id="myForm" enctype="multipart/form-data">
    <div class="form-group" style="padding-top: 20px;">
        <label for="name" class="col-sm-1 control-label" >商品类型</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="name" name="name">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">描述</label>
        <div class="col-sm-6">
            <input type="text"  class="form-control" id="info" name="info">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label class="col-sm-3 control-label"></label>
        <div class="col-sm-6">
            <button class="btn btn-primary btn-sm" name="add" type="button">确认添加</button>

        </div>
    </div>
</form>
</body>
</html>
