<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/16 0016
  Time: 11:50
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
    <title>商品列表</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/resources/css/list.css" />
</head>

<body>
<div style="height: 2000px;">
    <jsp:include page="top_quan.jsp"></jsp:include>
<div class="top1">
    <h2>品牌精选</h2>
    <hr style="border: 2px solid #000000" />
    <div class="jx">
        <div class="tu"><img src="<%=basePath%>jsp/resources/images/img_06.gif" /></div>
        <h3>TheNorthFace/北面</h3>
        <h6>全场低至五折</h6>
    </div>
    <div class="jx">
        <div class="tu"><img src="<%=basePath%>jsp/resources/images/img_08.gif" /></div>
        <h3>NiKe/耐克</h3>
        <h6>秋季新品上市</h6>
    </div>
    <div class="jx">
        <div class="tu"><img src="<%=basePath%>jsp/resources/images/img_03.gif" /></div>
        <h3>伯希和户外旗舰店</h3>
        <h6>低至25元</h6>
    </div>
    <div class="jx">
        <div class="tu"><img src="<%=basePath%>jsp/resources/images/img_11.gif" /></div>
        <h3>凯乐石官方旗舰店</h3>
        <h6>关注送无门槛券</h6>
    </div>
</div>

<div class="centre">
    <h2>美逆王牌</h2>
    <hr style="border: 2px solid #000000" />
    <a href="#">
        <c:forEach var="g" items="${goods}">
        <div class="jx1">

            <div class="tu1"><img src="<%=basePath%>${g.goodsImage}" /></div>
            <a>${g.goodsName}</a>
            <div class="button">￥<fmt:formatNumber type="number" value="${g.goodsPrice*g.rebate }" pattern="0.00" maxFractionDigits="2"/>
                <div class="xk"><del>￥${g.goodsPrice}</del></div>
            </div>

        </div>
        </c:forEach>
    </a>
</div>

<div class="xia">
    <h2>智能先锋</h2>
    <hr style="border: 2px solid #000000" />
    <a href="#">
        <div class="jx1">
            <div class="tu2"><img src="<%=basePath%>jsp/resources/images/img_30.gif" /></div>
            <a>Apple iPhone XS Max 移动联通电信4G手机 双卡双待</a>
            <div class="button">￥5999
                <div class="xk"><del>￥7999</del></div>
            </div>
        </div>
    </a>
    <a href="#">
        <div class="jx1">
            <div class="tu2"><img src="<%=basePath%>jsp/resources/images/img_33.gif" /></div>
            <a>智能家用婴儿称重成人健康减肥迷你人体电子秤</a>
            <div class="button">￥199
                <div class="xk"><del>￥300</del></div>
            </div>
        </div>
    </a>
    <a href="#">
        <div class="jx1">
            <div class="tu2"><img src="<%=basePath%>jsp/resources/images/img_35.gif" /></div>
            <a>沙宣恒温大功率家用造型电吹风机VS53IPCNC</a>
            <div class="button">￥70
                <div class="xk"><del>￥150</del></div>
            </div>
        </div>
    </a>
    <a href="#">
        <div class="jx1">
            <div class="tu2"><img src="<%=basePath%>jsp/resources/images/img_36.gif" /></div>
            <a>格力空调扇可移动家用冷风风扇静音节能</a>
            <div class="button">￥349
                <div class="xk"><del>￥499</del></div>
            </div>
        </div>
    </a>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>

</html>
