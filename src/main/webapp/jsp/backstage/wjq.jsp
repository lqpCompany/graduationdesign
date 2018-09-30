<%--
  Created by IntelliJ IDEA.
  User: S6203-1-08
  Date: 2018/9/28
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript" src="<%=basePath%>jquery.js"></script>
    <script>
        $(function () {
            $("#abc").click(function () {
                $.post("<%=basePath%>backstage/login",
                $("#myform").serialize(),
                    function (a) {
                        if(a.status==1){
                            alert("登录成功111")
                        }else {
                            alert("登录失败11")
                        }
                    }
                )
            })
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
