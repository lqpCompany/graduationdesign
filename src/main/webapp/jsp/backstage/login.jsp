<%--
  Created by IntelliJ IDEA.
  User: ljyadbefgh
  Date: 2018/9/6
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>hello</title>
    <%--引入juqery文件--%>
    <script language="JavaScript" src="<%=basePath%>jquery.js"></script>
    <%--使用juqery实现ajax登录--%>
    <script>
        $(function() {
            $("#abc").click(function() {
                //使用ajax执行登录操作
                //第一个参数指要访问的服务端地址；
                //第二个参数，指要传递的表单的数据，$("#myForm").serialize()
                //第三个参数，function(data)用于接收服务端返回来的值，data
                $.post("<%=basePath%>backstage/login",
                    $("#myform").serialize(),
                    function(data) {
                        //根据服务端返回来的值，判断登录是否成功
                        if(data.status==1){
                            alert("登录成功")
                        }else{
                            alert("登录失败");
                        }
                    });
            });
        });
    </script>
</head>
<body>
<form id="myform" method="post">
    账户名：<input name="username">
    密码：<input name="password">
    <input id="abc" type="button" value="登录">
</form>
</body>
</html>
