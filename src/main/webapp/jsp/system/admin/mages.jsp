<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>修改管理员信息</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/system/count/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript">
        $(function() {
            $('#detail-dialog').on('shown.bs.modal', function () {
                $('#name1').focus();
            });
            $('.doUpdateAdmin').click(function() {
                   $.get('http://120.78.138.95:8080/graduationdesign/system/admin/edit/'+$(this).attr('value'),function(data){
                        $('#name1').val(data.username);
                        $('#password').val(data.password);
                        $('#phone').val(data.phone);
                       $('#name').val(data.name);
                        $('#id').val(data.id);
                    });
                $('#detail-dialog').modal();
                return false;
            });

            $("button[name='addAdmin']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>system/admin/doUpdateAdmin",
                    $myForm.serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                    /*    if (data.status==1){
                            window.location.href = "system/admin/toAddAdmin";
                        }*/
                    }
                );
            });

            $("a[name='deleteAdmin']").click(function() {
                var $a = $(this);//获取指定a标签的jquery对象
                if(window.confirm('确定要删除该账户吗？删除后无法恢复')) {
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
<h3>修改管理员信息</h3>
<table class="table table-hover table-bordered">
    <thead>
    <tr>
        <th style="width: 10%;">ID</th>
        <th style="width: 10%;">管理员名字</th>
        <th style="width: 15%;">密&nbsp;&nbsp;&nbsp;码</th>
        <th>手机号码</th>
        <th>昵称</th>
        <th style="text-align: center;">操&nbsp;&nbsp;&nbsp;做</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="admin" items="${list}">
    <tr>
        <td>${admin.id}</td>
        <td>${admin.username}</td>
        <td>${admin.password}</td>
        <td>${admin.phone}</td>
        <td>${admin.name}</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm doUpdateAdmin"  value="${admin.id}">修改</button>
            <a name="deleteAdmin" class="btn btn-danger btn-sm" href="<%=basePath %>system/admin/doDeleteAdmin?id=${admin.id}">删除</a>
        </td>
    </tr>
</c:forEach>
    </tbody>
</table>
<ul class="pagination" style="float: right;">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
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
                <h4 class="modal-title">修改管理员信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal"  id="myForm">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">管理员名字</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="name1" name="username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">密码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="password" name="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">手机号码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="phone" name="phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detial" class="col-sm-3 control-label">昵称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-10">
                            <button class="btn btn-primary btn-sm" name="addAdmin">确认修改</button>
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
<script src="<%=basePath%>jsp/system/count/js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="<%=basePath%>jsp/system/count/bootstrap/js/bootstrap.min.js" ></script>
</body>
</html>
