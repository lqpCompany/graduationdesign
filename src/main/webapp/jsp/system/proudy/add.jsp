<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>添加产品</title>

    <!-- 导入kindEditor所需插件 -->
    <link rel="stylesheet" href="<%=basePath%>jsp/plugins/kindeditor-4.1.10/themes/default/default.css" />
    <script src="<%=basePath%>jsp/plugins/kindeditor-4.1.10/kindeditor.js"></script>
    <script src="<%=basePath%>jsp/plugins/kindeditor-4.1.10/lang/zh_CN.js"></script>

    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript">

        //实现kindeditor弹出图片上传窗口
        KindEditor.ready(function(K) {
            var editor = K.editor({//图片上传
                //指定上传文件的服务器端程序。
                uploadJson:  '<%=basePath%>jsp/plugins/kindeditor-4.1.10/jsp/upload_json.jsp',
                //指定浏览远程图片的服务器端程序
                fileManagerJson: '<%=basePath%>jsp/plugins/kindeditor-4.1.10/jsp/file_manager_json.jsp',
                allowFileManager : true
            });
            K('#image1').click(function() {
                editor.loadPlugin('image', function() {//动态加载插件，image为插件名
                    editor.plugin.imageDialog({
                        showLocal : true,//是否显示本地图片上传窗口
                        showRemote : true,//是否显示网络图片窗口
                        fillDescAfterUploadImage:false,//个人建议只在文本编辑器中使用true，true时图片上传成功后切换到图片编辑标签，false时插入图片后关闭弹出框。
                        imageUrl : K('#url1').val(),
                        clickFn : function(url, title, width, height, border, align) {
                            K('#url1').val(url);
                            editor.hideDialog();
                        }
                    });
                });
            });
        });

        $(function() {
            $("button[name='add']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>system/goods/doAddGoods",
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
                    });
            });
        });
    </script>
</head>
<body>
<h3>添加商品</h3>
<form class="form-horizontal" id="myForm" enctype="multipart/form-data">
    <div class="form-group" style="padding-top: 20px;">
        <label for="name" class="col-sm-1 control-label" >名称</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="goodsName" name="goodsName">
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-1 control-label">产品类型</label>
        <div class="col-sm-6">
            <select class="form-control" id="goodstype.id" name="goodstype.id">
                <c:forEach var="g" items="${goodstype }">
                    <option value="${g.id}">${g.name }</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">价格</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="goodsPrice" name="goodsPrice">
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">原价</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="rebate" name="rebate">
        </div>
    </div>
    <div class="form-group">
        <label for="pic" class="col-sm-1 control-label">产品图片</label>
        <div class="col-sm-3">
            <input id="url1" name="goodsImage"  readonly="readonly"/>
            <input type="button" id="image1"  style="width:100px;" value="点我选择图片" />
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label for="detial" class="col-sm-1 control-label">描述</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="goodsDescripttion" name="goodsDescripttion"></textarea>
        </div>
    </div>
    <div class="form-group" style="padding-top: 20px;">
        <label class="col-sm-3 control-label"></label>
        <div class="col-sm-6">
            <button class="btn btn-primary btn-sm" name="add" type="button">确认添加</button>

        </div>
    </div>
</form>
<script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
<script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
</body>
</html>
