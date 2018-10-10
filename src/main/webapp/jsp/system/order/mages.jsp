<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/10/10
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>购物车信息</title>
    <link rel="stylesheet" href="../count/bootstrap/css/bootstrap.min.css" />
    <script src="../count/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="../count/bootstrap/js/bootstrap.min.js" ></script>
</head>
<body>
<h3>购物信息</h3>
<table class="table table-hover table-bordered">
    <thead>
    <tr>
        <th style="width: 10%;">收货人</th>
        <th style="width: 10%;">名称</th>
        <th style="width: 10%;">价格</th>
        <th style="width: 10%;">数量</th>
        <th style="width: 10%;">是否支付</th>
        <th style="text-align: center;">操&nbsp;&nbsp;&nbsp;做</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td>560001</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal" disabled="disabled">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td>560001</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal" disabled="disabled">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td>560001</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal" disabled="disabled">修改</button>
            <button  class="btn btn-danger btn-sm" role="button">删除</button>
        </td>
    </tr>
    <tr>
        <td>560001</td>
        <td>Bangalore</td>
        <td>560001</td>
        <td>560001</td>
        <td>560001</td>
        <td style="text-align: center;">
            <button  class="btn btn-primary btn-sm update" data-toggle="modal" data-target="#myModal" disabled="disabled">修改</button>
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
</body>
</html>
