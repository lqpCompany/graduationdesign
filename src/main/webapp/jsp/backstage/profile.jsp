<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/21 0021
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>用户中心</title>
    <link href="<%=basePath%>jsp/resources/css/center.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>jsp/resources/jquery.js" ></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("button[name='addCustomer']").click(function() {
                var $myForm = $("#myForm");//获取指定a标签的jquery对象
                $.post("<%=basePath%>backstage/doUpdateCustomer",
                    $myForm.serialize(),
                    function(data) {
                        //jquery自带的json转换方法
                        if(typeof data != 'object') { //如果不是JS对象（则为JSON格式的数据，如servlet输出的JSON），则转换成JS对象
                            data = $.parseJSON(data);
                        }
                        alert(data.myMessage);
                        if (data.status==1){
                           /* $(location).attr('href', 'loginsuccess.jsp');*/
                        }
                    }
                );
            });
        });
    </script>

</head>
<body class="index account">
<jsp:include page="top.jsp" flush="true"></jsp:include>
<div class="container">
    <div class="main">
        <div class="menu">
            <a href="">购物记录</a>
            <a href="">账户管理</a>
            <a href="">联系我们</a>

            <a cclass="exit" id="exit" href="<%=basePath%>backstage/logout">安全退出</a>
        </div>
        <div class="page">
            <h3><span>账户管理</span></h3>

                <div class="form">
                    <form id="myForm" role="form">
                    <input type="hidden" name="id" value="${customer.id }">
                    <div class="form-item">
                        <label>用户名：</label>
                        <input type="text" value="${customer.username }" name="username">
                    </div>
                    <div class="form-item">
                        <label>密码：</label>
                        <input type="text" value="${customer.password }" name="password">
                    </div>
                    <div class="form-item">
                        <label>邮箱：</label>
                        <input type="text" value="${customer.email }" name="email">
                    </div>
                    <div class="form-item">
                        <label>地址：</label>
                        <input type="text" value="${customer.address }" name="address">
                    </div>
                    <div class="form-item">
                        <label>手机：</label>
                        <input type="text" value="${customer.phone }" name="phone">
                    </div>
                        <div class="form-item btns-item">
                        <button name="addCustomer" type="button">修改</button>
                    </div>
                    </form>
                </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
