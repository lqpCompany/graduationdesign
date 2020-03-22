
<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>修改产品信息</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(function() {
            $('#detail-dialog').on('shown.bs.modal', function () {
                $('#name').focus();
            });
            $(".pagination li a").click(function () {
                var url=$(this).attr("href");
                $('#sub-page').load(url);
                return false;
            });
            $('.update').click(function() {
                $.get('http://localhost:8080/graduationdesign/system/goods/edit/'+$(this).attr('value'),function(data){
                    $('#goodsName').val(data.goodsName);
                    $('#goodsPrice').val(data.goodsPrice);
                    $('#rebate').val(data.rebate);
                    $('#goodsImage').val(data.goodsImage);
                    $('#goodsDescripttion').val(data.goodsDescripttion);
                    $('#id').val(data.id);

                });
                $('#detail-dialog').modal();
                return false;
            });

          $("button[name='addGoods']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("system/goods/doUpdateGoods",
                    $myForm.serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        if (data.status==1){
                            alert("1111");
                         window.location.href = "<%=basePath%>system/goods/mages";
                         }
                    }
                );
            });

            $("a[name='deleteGoods']").click(function() {
                var $a = $(this);//获取指定a标签的jquery对象
                if(window.confirm('确定要删除该商品吗？删除后无法恢复')) {
                    $.get($a.attr("href"), function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        if(data.status == 1) { //如果删除成功
                            $a.parents("tr").remove();//移除该元素所在表格行
                        }else{//如果删除失败
                            alert(data.myMessage);
                        }
                    });
                }
                return false;//让链接事件失效，即不再执行原链接跳转
            });
        });
    </script>
</head>
<body>
<h3>修改商品信息</h3>
<table class="table table-hover table-bordered">
    <thead>
    <tr>
        <th style="width: 5%;text-align: center;">ID</th>
        <th style="width: 10%;text-align: center;">名称</th>
        <th style="width: 10%;text-align: center;">类型</th>
        <th style="width: 10%;text-align: center;">价格</th>
        <th style="width: 10%;text-align: center;">折扣</th>
        <th style="width: 10%;text-align: center;">图片</th>
        <th style="width: 25%;">描述</th>
        <th style="text-align: center;">操&nbsp;&nbsp;&nbsp;做</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="good" items="${requestScope.list}">
    <tr>
        <td style="text-align: center">${good.id}</td>
        <td style="text-align: center">${good.goodsName}</td>
        <td style="text-align: center">${good.goodstype.name}</td>
        <td style="text-align: center">${good.goodsPrice}</td>
        <td style="text-align: center">${good.rebate}</td>
        <td style="text-align: center"><img style="width: 40px;" src="${good.goodsImage}"></td>
        <td>${good.goodsDescripttion}</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" value="${good.id}">修改</button>
            <a name="deleteGoods" class="btn btn-danger btn-sm" href="<%=basePath %>system/goods/doDeleteGoods?id=${good.id}">删除</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>

<ul class="pagination" style="float: left;">
    共<i class="blue">${page.tatolCount}</i>条记录,当前显示第<i class="blue">${page.pageIndex}</i>页,共<i
        class="blue">${page.pageCount}</i>页
</ul>
<ul class="pagination" style="float: right;">
    <li><a href="<%=basePath%>system/goods/MagesGoods?pageIndex=1">首页</a></li>
    <li><a href="<%=basePath%>system/goods/MagesGoods?pageIndex=${page.pageIndex-1}">上一页</a></li>
    <li><a href="<%=basePath%>system/goods/MagesGoods?pageIndex=${page.pageIndex+1}">下一页</a></li>
    <li><a href="<%=basePath%>system/goods/MagesGoods?pageIndex=${page.tatolCount}">尾页</a></li>
</ul>
<!--模态框-->
<div class="modal fade" id="detail-dialog" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">修改产品信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="myForm">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">产品名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="goodsName" name="goodsName">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="discount" class="col-sm-3 control-label">产品类型</label>
                        <div class="col-sm-8">
                            <select class="form-control" id="goodstype.id" name="goodstype.id">
                                <c:forEach var="g" items="${goodstype }" >
                                <option value="${g.id }">${g.name }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">折扣</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="rebate" name="rebate">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">现价</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="goodsPrice" name="goodsPrice">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">图片</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="goodsImage" name="goodsImage" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">描述</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="goodsDescripttion" name="goodsDescripttion"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-10">
                            <button class="btn btn-primary btn-sm" name="addGoods">确认修改</button>
                            <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </form>
            </div>
            <!--
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn">保存</button>
            </div>
             -->
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
</html>
