<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/19 0019
  Time: 14:59
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
    <meta charset="UTF-8">
    <title>商品详情页</title>
    <link rel="stylesheet" href="<%=basePath%>jsp/resources/css/details.css" />
    <script src="<%=basePath%>jsp/resources/JS/jquery-1.11.3.min.js"></script>
    <script>
        function del() { var num = parseInt($('#quantity').text()) - 1; if(num < 1) { $('#quantity').text(1); } else { $('#quantity').text(num); } }

        function add() {
            var num = parseInt($('#quantity').text()) + 1;
            $('#quantity').text(num);
        }
    </script>

</head>

<body>
<jsp:include page="top_quan.jsp"></jsp:include>
<div class="det">
    <div class="det_life">
        <div class="dtu">
            <img src="<%=basePath%>${goods.goodsImage}" />
        </div>
    </div>
    <div class="det_right">
        <div class="wzk">
            <h2>${goods.goodsName}</h2>
            <h6>满减活动进行中，买满98元即送指尖陀螺一个。全国包邮。</h6>
        </div>
        <div class="xinxik">
            <div class="xinxi">
                <div class="xinxi_right">
                    <a>累计评价</a><br>
                    <a>&nbsp;&nbsp;1000+</a>
                </div>
                <a>参考价&nbsp;&nbsp;&nbsp;&nbsp;<del style="font-size: 14px;">￥${goods.goodsPrice}</del></a><br>
                <a>活动价&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a style="color: #B61D1D; font-size: 18px;">￥<fmt:formatNumber type="number" value="${goods.goodsPrice*goods.rebate }" pattern="0.00" maxFractionDigits="2"/></a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <span style="color: #FFFFFF; background-color: #E6382F;">正在促销</span><br />
                <a>促销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style=" font-size: 13px; color: #E6382F;">&nbsp;&nbsp;满&nbsp;&nbsp;减&nbsp;&nbsp;</span> 满500.00立减88.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a style="font-size: 12px; color: darkcyan;">更多满减优惠></a>
                </a><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style=" font-size: 13px; color: #E6382F;">&nbsp;&nbsp;实名有礼&nbsp;&nbsp;</span> 实名认证领6+2优惠券&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-size: 12px; color: darkcyan;">登陆后查看></a>
            </div>
            <div class="det_bottom">
                <div class="zi">分享&nbsp;&nbsp;&nbsp;&nbsp;收藏</div>
                <div class="gouwuche">购物车</div>
                <input type="button" value="-" id="del" onclick="del()" />
                <span id="quantity">1</span>
                <input type="button" value="+" id="add" onclick="add()" />
                <div class="goumai">立即购买</div>
            </div>

        </div>
    </div>
</div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
