<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/1
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>底部内容</title>
    <link href="<%=basePath%>resources/css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--底部-->
<div class="footer">
    <div class="foot">
        <p>2018，6+2购物网站 京ICP证070709号 | 电子公告服务规则</p>
        <p>广播电视台节目制作经营许可证 （京）字第0110号</p>
        <p>京公网安备13677788948号</p>
    </div>
</div>
<!--底部结束-->
</body>
</html>
