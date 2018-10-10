<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>修改管理员信息</title>
    <link rel="stylesheet" href="../count/bootstrap/css/bootstrap.min.css" />
    <script src="../count/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="../count/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript">
        $(function() {
            $('#detail-dialog').on('shown.bs.modal', function () {
                $('#name').focus();
            });
            $('.update').click(function() {
                /*$.get('http://localhost:8080/czebuy/system/customer/edit/'+$(this).attr('value'),function(data){
               $('#name').val(data.name);
               $('#password').val(data.password);
               $('#phone').val(data.phone);
               $('#address').val(data.address);
               $('#id').val(data.id);
               $('#creaTime').val(data.creaTime);
               $('#pic').val(data.pic);*/

            });
            $('#detail-dialog').modal();
            return false;
        });
        $('.del').click(function() {
            /*//让当前页面跳转另一个页面
            window.location.href ='system/customer/delete/'+$(this).attr('value');*/
            return false;
        });
        });
    </script>
</head>
<body>
<h3>修改管理员信息</h3>
<table class="table table-hover table-bordered">
    <thead>
    <tr>
        <th style="width: 10%;">管理员名字</th>
        <th style="width: 15%;">密&nbsp;&nbsp;&nbsp;码</th>
        <th>手机号码</th>
        <th style="text-align: center;">操&nbsp;&nbsp;&nbsp;做</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
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
                <form class="form-horizontal" action="" method="post">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">管理员名字</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="name" name="name">
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
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-10">
                            <button class="btn btn-primary btn-sm">确认添加</button>
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
