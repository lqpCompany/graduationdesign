<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/30
  Time: 21:35
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
</head>
<body>
<form id="myform" method="post" action="<%=basePath%>backstage/add">
    账户名：<input name="username">
    密码：<input name="password">
    <input id="abc" type="submit" value="注册">
</form>
</body>
</html>
