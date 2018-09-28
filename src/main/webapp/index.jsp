<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<a href="hello">点我就和你说hello</a><br/>
<a href="<%=basePath%>jsp/backstage/login.jsp">登录页面</a>
<a href="<%=basePath%>jsp/backstage/wjq.jsp">哥的登录页面</a>
</body>
</html>