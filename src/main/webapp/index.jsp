<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/1
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>首页</title>
    <link href="jsp/backstage/customer/css/index.css" rel="stylesheet" type="text/css" />
    <link href="jsp/backstage/customer/font/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="jsp/backstage/customer/JS/jquery.min.js" ></script>
    <script type="text/javascript" src="jsp/backstage/customer/JS/index.js" ></script>
    <script>
        $(document).ready(function(){
            /*鼠标放到导航*/
            $('.nav li>a').mousemove(function(){
                $(this).css('color','red');
            });
            $('.nav li>a').mouseout(function(){
                $(this).css('color','#B7BCB8');
            });

            /*鼠标放到全部分类导航时改变字体颜色*/
            $('.navitems_next li>a').mousemove(function(){
                $(this).css('color','red');
            });
            $('.navitems_next li>a').mouseout(function(){
                $(this).css('color','#FFFFFF');
            });
        });
    </script>
</head>
<body>
<!--整合网页最大框架-->
<div id="app">
        <!--顶部内容-->
      <jsp:include page="jsp/backstage/customer/top.jsp"></jsp:include>
    <!--搜索框开始-->
    <div id="header">
        <div class="header_next">
            <!--放置logo-->
            <div class="logo">
                <img src="jsp/backstage/customer/images/logo.jpg" />
            </div>
            <!--搜索框-->
            <div id="search">
                <div class="search_next">
                    <div class="form">
                        <input type="text" class="cla" />
                    </div>

                    <button class="sousuo">

                        <div class="sousuo_next">搜索</div>

                    </button>

                </div>
            </div>
            <!--购物车-->
            <div class="shopping ">
                <div class="shopping_next">
                    <!--这里写内容-->
                    <a href="">
                        <div class="gouwu">
                            <ul class="ziti">我的购物车</ul>
                        </div>
                        <img src="jsp/backstage/customer/images/gouwu.png" />
                    </a>
                </div>
            </div>
            <!--商品分类-->

        </div>
        <!--搜索框结束-->
    </div>
    <!--中部框架开始-->
    <div id="central ">
        <div class="central_c1 central_c2">
            <div class="navitems">
                <div class="fl">全部分类</div>
                <div class="dh">
                    <ul class="navitems_next">
                        <li><a href="#">秒杀</a></li>
                        <li><a href="#">优惠券</a></li>
                        <li><a href="#">闪购</a></li>
                        <li><a href="#">大聚会</a></li>
                        <li><a href="#">生活家电</a></li>
                        <li><a href="#">今日新品</a></li>
                        <li><a href="#">6+2服饰</a></li>
                        <li><a href="#">6+2超市</a></li>
                    </ul>
                </div>
            </div>
            <!--左边内容-->
            <div class="fs1">
                <!--第一模块开始-->
                <div class="z1">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/phone.png" style="width: 30px; height: 30px; float: left;">
                            <a href="#">手机/</a>
                            <a href="#">运营商/</a>
                            <a href="#">智能数码</a>
                        </li>
                    </ul>
                </div>
                <div class="z1_next">
                    <dl class="fore1">
                        <dt><a href="#">手机通讯<i>></i></a></dt>
                        <dd>
                            <a href="#">手机</a>
                            <a href="#">对讲机</a>
                            <a href="#">以旧换新</a>
                            <a href="#">手机维修</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="#">京东通讯<i>></i></a></dt>
                        <dd>
                            <a href="#">选号中心</a>
                            <a href="#">自助服务</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="#">运营商<i>></i></a></dt>
                        <dd>
                            <a href="#">合约机</a>
                            <a href="#">办套餐</a>
                            <a href="#">选号码</a>
                            <a href="#">装宽带</a>
                            <a href="#">中国移动</a>
                            <a href="#">中国联通</a>
                            <a href="#">中国电信</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="#">手机配件<i>></i></a></dt>
                        <dd>
                            <a href="#">电池/移动电源</a>
                            <a href="#">蓝牙耳机</a>
                            <a href="#">充电器/数据线</a>
                            <a href="#">手机耳机</a>
                            <a href="#">手机支架</a>
                            <a href="#">贴膜</a>
                            <a href="#">存储卡</a>
                            <a href="#">保护套</a>
                            <a href="#">车载iPhone配件</a>
                            <a href="#">创意配件</a>
                            <a href="#">便携/无线音箱</a>
                            <a href="#">手机饰品</a>
                            <a href="#">拍照配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="#">摄影摄像<i>></i></a></dt>
                        <dd>
                            <a href="#">数码相机</a>
                            <a href="#">单电/微单相机</a>
                            <a href="#">单反相机</a>
                            <a href="#">拍立得</a>
                            <a href="#">运动相机</a>
                            <a href="#">摄像机</a>
                            <a href="#">镜头户外器材</a>
                            <a href="#">影棚器材</a>
                            <a href="#">冲印服务</a>
                            <a href="#">数码相框</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="#">电器一体<i>></i></a></dt>
                        <dd>
                            <a href="#">平板电视</a>
                            <a href="#">空调</a>
                            <a href="#">冰箱</a>
                            <a href="#">洗衣机</a>
                            <a href="#">家庭影院</a>
                            <a href="#">DVD</a>
                            <a href="#">迷你音响</a>
                            <a href="#">烟机/灶具</a>
                            <a href="#">热水器</a>
                            <a href="#">消毒具/洗碗柜</a>
                            <a href="#">冰柜/冰吧</a>
                            <a href="#">酒柜</a>
                            <a href="#">家电配件</a>
                        </dd>
                    </dl>
                </div>
                <div class="z2">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/dianshi.png" style="width: 30px; height: 30px; float: left;">
                            <a href="#">电视/</a>
                            <a href="#">冰箱</a>
                            <a href="#">空调/</a>
                            <a href="#">洗衣机</a>
                        </li>
                    </ul>
                </div>
                <div class="z2_next">
                    <dl class="fore1">
                        <dt><a href="#">大家电<i>></i></a></dt>
                        <dd>
                            <a href="#">平板电视</a>
                            <a href="#">空调</a>
                            <a href="#">冰箱</a>
                            <a href="#">洗衣机</a>
                            <a href="#">家庭影院</a>
                            <a href="#">DVD</a>
                            <a href="#">迷你音响</a>
                            <a href="#">烟机/灶具</a>
                            <a href="#">热水器</a>
                            <a href="#">消毒具/洗碗柜</a>
                            <a href="#">冰柜/冰吧</a>
                            <a href="#">酒柜</a>
                            <a href="#">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="#">生活电器<i>></i></a></dt>
                        <dd>
                            <a href="#">取暖电器</a>
                            <a href="#">净化器</a>
                            <a href="#">扫地机器人</a>
                            <a href="#">吸尘器</a>
                            <a href="#">加湿器</a>
                            <a href="#">挂烫机/熨斗</a>
                            <a href="#">电风扇</a>
                            <a href="#">冷风扇</a>
                            <a href="#">插座</a>
                            <a href="#">电话机</a>
                            <a href="#">净水器</a>
                            <a href="#">饮水机</a>
                            <a href="#">除湿机</a>
                            <a href="#">干衣机清洁机</a>
                            <a href="#">收录/音机</a>
                            <a href="#">生活电器配件</a>
                            <a href="#">其它生活电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">厨房电器<i>></i></a></dt>
                        <dd>
                            <a href="">电压力锅</a>
                            <a href="">豆浆机</a>
                            <a href="">面包机</a>
                            <a href="">咖啡机</a>
                            <a href="">微波炉料理/榨汁机</a>
                            <a href="">电烤箱</a>
                            <a href="">电磁炉</a>
                            <a href="">电饼铛/烧烤盘</a>
                            <a href="">煮蛋器酸奶机</a>
                            <a href="">电水壶/热水瓶</a>
                            <a href="">电炖锅</a>
                            <a href="">多用途锅</a>
                            <a href="">果蔬解毒机</a>
                            <a href="">养生壶/煎药壶</a>
                            <a href="">其它厨房电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">个护健康<i>></i></a></dt>
                        <dd>
                            <a href="">剃须刀剃/脱毛器</a>
                            <a href="">口腔护理</a>
                            <a href="">电吹风</a>
                            <a href="">美容器</a>
                            <a href="">理发器卷/直发器</a>
                            <a href="">按摩椅</a>
                            <a href="">按摩器</a>
                            <a href="">足浴盆</a>
                            <a href="">血压计</a>
                            <a href="">健康秤/厨房秤</a>
                            <a href="">血糖仪</a>
                            <a href="">体温计</a>
                            <a href="">计步器/脂肪检测仪</a>
                            <a href="">脂肪检测仪其它健康电器</a>
                        </dd>
                    </dl>

                </div>

                <div class="z3">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/huazhuang.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">个护化妆/</a>
                            <a href="">纸品清洁/</a>
                            <a href="">宠物</a>
                        </li>
                    </ul>
                </div>
                <div class="z3_next">
                    <dl class="fore1">
                        <dt><a href="">电器一体<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">手机通讯<i>></i></a></dt>
                        <dd>
                            <a href="">手机</a>
                            <a href="">对讲机</a>
                            <a href="">以旧换新</a>
                            <a href="">手机维修</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">京东通讯<i>></i></a></dt>
                        <dd>
                            <a href="">选号中心</a>
                            <a href="">自助服务</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">运营商<i>></i></a></dt>
                        <dd>
                            <a href="">合约机</a>
                            <a href="">办套餐</a>
                            <a href="">选号码</a>
                            <a href="">装宽带</a>
                            <a href="">中国移动</a>
                            <a href="">中国联通</a>
                            <a href="">中国电信</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">手机配件<i>></i></a></dt>
                        <dd>
                            <a href="">电池/移动电源</a>
                            <a href="">蓝牙耳机</a>
                            <a href="">充电器/数据线</a>
                            <a href="">手机耳机</a>
                            <a href="">手机支架</a>
                            <a href="">贴膜</a>
                            <a href="">存储卡</a>
                            <a href="">保护套</a>
                            <a href="">车载iPhone配件</a>
                            <a href="">创意配件</a>
                            <a href="">便携/无线音箱</a>
                            <a href="">手机饰品</a>
                            <a href="">拍照配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">摄影摄像<i>></i></a></dt>
                        <dd>
                            <a href="">数码相机</a>
                            <a href="">单电/微单相机</a>
                            <a href="">单反相机</a>
                            <a href="">拍立得</a>
                            <a href="">运动相机</a>
                            <a href="">摄像机</a>
                            <a href="">镜头户外器材</a>
                            <a href="">影棚器材</a>
                            <a href="">冲印服务</a>
                            <a href="">数码相框</a>
                        </dd>
                    </dl>
                </div>

                <div class="z4">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/tel.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">电脑办公/</a>
                            <a href="">相机/</a>
                            <a href="">DIY</a>
                        </li>
                    </ul>
                </div>
                <div class="z4_next">
                    <dl class="fore1">
                        <dt><a href="">大家电<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">生活电器<i>></i></a></dt>
                        <dd>
                            <a href="">取暖电器</a>
                            <a href="">净化器</a>
                            <a href="">扫地机器人</a>
                            <a href="">吸尘器</a>
                            <a href="">加湿器</a>
                            <a href="">挂烫机/熨斗</a>
                            <a href="">电风扇</a>
                            <a href="">冷风扇</a>
                            <a href="">插座</a>
                            <a href="">电话机</a>
                            <a href="">净水器</a>
                            <a href="">饮水机</a>
                            <a href="">除湿机</a>
                            <a href="">干衣机清洁机</a>
                            <a href="">收录/音机</a>
                            <a href="">生活电器配件</a>
                            <a href="">其它生活电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">厨房电器<i>></i></a></dt>
                        <dd>
                            <a href="">电压力锅</a>
                            <a href="">豆浆机</a>
                            <a href="">面包机</a>
                            <a href="">咖啡机</a>
                            <a href="">微波炉料理/榨汁机</a>
                            <a href="">电烤箱</a>
                            <a href="">电磁炉</a>
                            <a href="">电饼铛/烧烤盘</a>
                            <a href="">煮蛋器酸奶机</a>
                            <a href="">电水壶/热水瓶</a>
                            <a href="">电炖锅</a>
                            <a href="">多用途锅</a>
                            <a href="">果蔬解毒机</a>
                            <a href="">养生壶/煎药壶</a>
                            <a href="">其它厨房电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">个护健康<i>></i></a></dt>
                        <dd>
                            <a href="">剃须刀剃/脱毛器</a>
                            <a href="">口腔护理</a>
                            <a href="">电吹风</a>
                            <a href="">美容器</a>
                            <a href="">理发器卷/直发器</a>
                            <a href="">按摩椅</a>
                            <a href="">按摩器</a>
                            <a href="">足浴盆</a>
                            <a href="">血压计</a>
                            <a href="">健康秤/厨房秤</a>
                            <a href="">血糖仪</a>
                            <a href="">体温计</a>
                            <a href="">计步器/脂肪检测仪</a>
                            <a href="">脂肪检测仪其它健康电器</a>
                        </dd>
                    </dl>

                </div>

                <div class="z5">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/xie.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">鞋靴/</a>
                            <a href="">箱包/</a>
                            <a href="">钟表/</a>
                            <a href="">珠宝</a>
                        </li>
                    </ul>
                </div>
                <div class="z5_next">
                    <dl class="fore1">
                        <dt><a href="">手机通讯<i>></i></a></dt>
                        <dd>
                            <a href="">手机</a>
                            <a href="">对讲机</a>
                            <a href="">以旧换新</a>
                            <a href="">手机维修</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">京东通讯<i>></i></a></dt>
                        <dd>
                            <a href="">选号中心</a>
                            <a href="">自助服务</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">运营商<i>></i></a></dt>
                        <dd>
                            <a href="">合约机</a>
                            <a href="">办套餐</a>
                            <a href="">选号码</a>
                            <a href="">装宽带</a>
                            <a href="">中国移动</a>
                            <a href="">中国联通</a>
                            <a href="">中国电信</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">手机配件<i>></i></a></dt>
                        <dd>
                            <a href="">电池/移动电源</a>
                            <a href="">蓝牙耳机</a>
                            <a href="">充电器/数据线</a>
                            <a href="">手机耳机</a>
                            <a href="">手机支架</a>
                            <a href="">贴膜</a>
                            <a href="">存储卡</a>
                            <a href="">保护套</a>
                            <a href="">车载iPhone配件</a>
                            <a href="">创意配件</a>
                            <a href="">便携/无线音箱</a>
                            <a href="">手机饰品</a>
                            <a href="">拍照配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">电器一体<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">摄影摄像<i>></i></a></dt>
                        <dd>
                            <a href="">数码相机</a>
                            <a href="">单电/微单相机</a>
                            <a href="">单反相机</a>
                            <a href="">拍立得</a>
                            <a href="">运动相机</a>
                            <a href="">摄像机</a>
                            <a href="">镜头户外器材</a>
                            <a href="">影棚器材</a>
                            <a href="">冲印服务</a>
                            <a href="">数码相框</a>
                        </dd>
                    </dl>
                </div>

                <div class="z6">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/baby.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">母婴/</a>
                            <a href="">玩具/</a>
                            <a href="">车床/</a>
                            <a href="">童装</a>
                        </li>
                    </ul>
                </div>
                <div class="z6_next">
                    <dl class="fore1">
                        <dt><a href="">大家电<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">生活电器<i>></i></a></dt>
                        <dd>
                            <a href="">取暖电器</a>
                            <a href="">净化器</a>
                            <a href="">扫地机器人</a>
                            <a href="">吸尘器</a>
                            <a href="">加湿器</a>
                            <a href="">挂烫机/熨斗</a>
                            <a href="">电风扇</a>
                            <a href="">冷风扇</a>
                            <a href="">插座</a>
                            <a href="">电话机</a>
                            <a href="">净水器</a>
                            <a href="">饮水机</a>
                            <a href="">除湿机</a>
                            <a href="">干衣机清洁机</a>
                            <a href="">收录/音机</a>
                            <a href="">生活电器配件</a>
                            <a href="">其它生活电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">厨房电器<i>></i></a></dt>
                        <dd>
                            <a href="">电压力锅</a>
                            <a href="">豆浆机</a>
                            <a href="">面包机</a>
                            <a href="">咖啡机</a>
                            <a href="">微波炉料理/榨汁机</a>
                            <a href="">电烤箱</a>
                            <a href="">电磁炉</a>
                            <a href="">电饼铛/烧烤盘</a>
                            <a href="">煮蛋器酸奶机</a>
                            <a href="">电水壶/热水瓶</a>
                            <a href="">电炖锅</a>
                            <a href="">多用途锅</a>
                            <a href="">果蔬解毒机</a>
                            <a href="">养生壶/煎药壶</a>
                            <a href="">其它厨房电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">个护健康<i>></i></a></dt>
                        <dd>
                            <a href="">剃须刀剃/脱毛器</a>
                            <a href="">口腔护理</a>
                            <a href="">电吹风</a>
                            <a href="">美容器</a>
                            <a href="">理发器卷/直发器</a>
                            <a href="">按摩椅</a>
                            <a href="">按摩器</a>
                            <a href="">足浴盆</a>
                            <a href="">血压计</a>
                            <a href="">健康秤/厨房秤</a>
                            <a href="">血糖仪</a>
                            <a href="">体温计</a>
                            <a href="">计步器/脂肪检测仪</a>
                            <a href="">脂肪检测仪其它健康电器</a>
                        </dd>
                    </dl>

                </div>

                <div class="z7">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/jiaju.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">家具/</a>
                            <a href="">家装/</a>
                            <a href="">家纺</a>
                        </li>
                    </ul>
                </div>
                <div class="z7_next">
                    <dl class="fore1">
                        <dt><a href="">手机通讯<i>></i></a></dt>
                        <dd>
                            <a href="">手机</a>
                            <a href="">对讲机</a>
                            <a href="">以旧换新</a>
                            <a href="">手机维修</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">电器一体<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">京东通讯<i>></i></a></dt>
                        <dd>
                            <a href="">选号中心</a>
                            <a href="">自助服务</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">运营商<i>></i></a></dt>
                        <dd>
                            <a href="">合约机</a>
                            <a href="">办套餐</a>
                            <a href="">选号码</a>
                            <a href="">装宽带</a>
                            <a href="">中国移动</a>
                            <a href="">中国联通</a>
                            <a href="">中国电信</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">手机配件<i>></i></a></dt>
                        <dd>
                            <a href="">电池/移动电源</a>
                            <a href="">蓝牙耳机</a>
                            <a href="">充电器/数据线</a>
                            <a href="">手机耳机</a>
                            <a href="">手机支架</a>
                            <a href="">贴膜</a>
                            <a href="">存储卡</a>
                            <a href="">保护套</a>
                            <a href="">车载iPhone配件</a>
                            <a href="">创意配件</a>
                            <a href="">便携/无线音箱</a>
                            <a href="">手机饰品</a>
                            <a href="">拍照配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">摄影摄像<i>></i></a></dt>
                        <dd>
                            <a href="">数码相机</a>
                            <a href="">单电/微单相机</a>
                            <a href="">单反相机</a>
                            <a href="">拍立得</a>
                            <a href="">运动相机</a>
                            <a href="">摄像机</a>
                            <a href="">镜头户外器材</a>
                            <a href="">影棚器材</a>
                            <a href="">冲印服务</a>
                            <a href="">数码相框</a>
                        </dd>
                    </dl>
                </div>

                <div class="z8">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/jiu.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">食品/</a>
                            <a href="">酒水/</a>
                            <a href="">生鲜/</a>
                            <a href="">特产</a>
                        </li>
                    </ul>
                </div>
                <div class="z8_next">
                    <dl class="fore1">
                        <dt><a href="">大家电<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">生活电器<i>></i></a></dt>
                        <dd>
                            <a href="">取暖电器</a>
                            <a href="">净化器</a>
                            <a href="">扫地机器人</a>
                            <a href="">吸尘器</a>
                            <a href="">加湿器</a>
                            <a href="">挂烫机/熨斗</a>
                            <a href="">电风扇</a>
                            <a href="">冷风扇</a>
                            <a href="">插座</a>
                            <a href="">电话机</a>
                            <a href="">净水器</a>
                            <a href="">饮水机</a>
                            <a href="">除湿机</a>
                            <a href="">干衣机清洁机</a>
                            <a href="">收录/音机</a>
                            <a href="">生活电器配件</a>
                            <a href="">其它生活电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">厨房电器<i>></i></a></dt>
                        <dd>
                            <a href="">电压力锅</a>
                            <a href="">豆浆机</a>
                            <a href="">面包机</a>
                            <a href="">咖啡机</a>
                            <a href="">微波炉料理/榨汁机</a>
                            <a href="">电烤箱</a>
                            <a href="">电磁炉</a>
                            <a href="">电饼铛/烧烤盘</a>
                            <a href="">煮蛋器酸奶机</a>
                            <a href="">电水壶/热水瓶</a>
                            <a href="">电炖锅</a>
                            <a href="">多用途锅</a>
                            <a href="">果蔬解毒机</a>
                            <a href="">养生壶/煎药壶</a>
                            <a href="">其它厨房电器</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">个护健康<i>></i></a></dt>
                        <dd>
                            <a href="">剃须刀剃/脱毛器</a>
                            <a href="">口腔护理</a>
                            <a href="">电吹风</a>
                            <a href="">美容器</a>
                            <a href="">理发器卷/直发器</a>
                            <a href="">按摩椅</a>
                            <a href="">按摩器</a>
                            <a href="">足浴盆</a>
                            <a href="">血压计</a>
                            <a href="">健康秤/厨房秤</a>
                            <a href="">血糖仪</a>
                            <a href="">体温计</a>
                            <a href="">计步器/脂肪检测仪</a>
                            <a href="">脂肪检测仪其它健康电器</a>
                        </dd>
                    </dl>

                </div>

                <div class="z9">
                    <ul>
                        <li><img src="jsp/backstage/customer/images/fu.png" style="width: 30px; height: 30px; float: left;">
                            <a href="">男装/</a>
                            <a href="">女装/</a>
                            <a href="">内衣/</a>
                            <a href="">配饰</a>
                        </li>
                    </ul>
                </div>
                <div class="z9_next">
                    <dl class="fore1">
                        <dt><a href="">手机通讯<i>></i></a></dt>
                        <dd>
                            <a href="">手机</a>
                            <a href="">对讲机</a>
                            <a href="">以旧换新</a>
                            <a href="">手机维修</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">京东通讯<i>></i></a></dt>
                        <dd>
                            <a href="">选号中心</a>
                            <a href="">自助服务</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">运营商<i>></i></a></dt>
                        <dd>
                            <a href="">合约机</a>
                            <a href="">办套餐</a>
                            <a href="">选号码</a>
                            <a href="">装宽带</a>
                            <a href="">中国移动</a>
                            <a href="">中国联通</a>
                            <a href="">中国电信</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">手机配件<i>></i></a></dt>
                        <dd>
                            <a href="">电池/移动电源</a>
                            <a href="">蓝牙耳机</a>
                            <a href="">充电器/数据线</a>
                            <a href="">手机耳机</a>
                            <a href="">手机支架</a>
                            <a href="">贴膜</a>
                            <a href="">存储卡</a>
                            <a href="">保护套</a>
                            <a href="">车载iPhone配件</a>
                            <a href="">创意配件</a>
                            <a href="">便携/无线音箱</a>
                            <a href="">手机饰品</a>
                            <a href="">拍照配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">电器一体<i>></i></a></dt>
                        <dd>
                            <a href="">平板电视</a>
                            <a href="">空调</a>
                            <a href="">冰箱</a>
                            <a href="">洗衣机</a>
                            <a href="">家庭影院</a>
                            <a href="">DVD</a>
                            <a href="">迷你音响</a>
                            <a href="">烟机/灶具</a>
                            <a href="">热水器</a>
                            <a href="">消毒具/洗碗柜</a>
                            <a href="">冰柜/冰吧</a>
                            <a href="">酒柜</a>
                            <a href="">家电配件</a>
                        </dd>
                    </dl>
                    <dl class="fore1">
                        <dt><a href="">摄影摄像<i>></i></a></dt>
                        <dd>
                            <a href="">数码相机</a>
                            <a href="">单电/微单相机</a>
                            <a href="">单反相机</a>
                            <a href="">拍立得</a>
                            <a href="">运动相机</a>
                            <a href="">摄像机</a>
                            <a href="">镜头户外器材</a>
                            <a href="">影棚器材</a>
                            <a href="">冲印服务</a>
                            <a href="">数码相框</a>
                        </dd>
                    </dl>
                </div>

                <!--结束第一模块-->
            </div>
            <!--中间内容-->
            <div class="fs2">
                <div id="slider-wrap">
                    <ul id="slider">
                        <li>
                            <img src="jsp/backstage/customer/images/timg3.jpg" style="height: 450px; width: 670px;"/>

                        </li>
                        <li>
                            <img src="jsp/backstage/customer/images/timg3.jpg" style="height: 450px; width: 670px;"/>
                        </li>
                        <li>
                            <img src="jsp/backstage/customer/images/timg3.jpg" style="height: 450px; width: 670px;"/>
                        </li>
                        <li>
                            <img src="jsp/backstage/customer/images/timg3.jpg" style="height: 450px; width: 670px;"/>
                        </li>
                    </ul>
                    <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
                    <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
                </div>
            </div>
            <!--右边内容-->
            <div class="fs3">
                <a href="#">
                    <div>
                        <img src="jsp/backstage/customer/images/by09.gif" />
                    </div>
                    <div class="fs3_next">
                        <img src="jsp/backstage/customer/images/by13.gif" />
                    </div>
                </a>
            </div>
            <script type="text/javascript" src="jsp/backstage/customer/js/slide.js"></script>
        </div>
    </div>
    <!--中部框架结束-->
    <!--商品展示-->
    <div class="floors">
        <div class="miaosha">
            <div class="miaosha_next">
                <!--左边倒计时-->
                <div class="count ">
                    <img src="jsp/backstage/customer/images/by17.gif" width="190px" />
                </div>
                <!--倒计时旁边的图片-->
                <div class="count_right">
                    <!--中间四张图片-->
                    <div class="imgs">
                        <a href="#">
                            <div class="pic"><img src="jsp/backstage/customer/images/by20.gif" />
                                <p>巨水光控油收缩毛孔化妆水</p>
                                <div class="button">
                                    ￥1099
                                    <div class="xk"><del>￥1499</del></div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="pic"><img src="jsp/backstage/customer/images/by22.gif" />
                                <p>优质保温水壶特卖</p>
                                <div class="button">￥499
                                    <div class="xk"><del>￥699</del></div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="pic"><img src="jsp/backstage/customer/images/by24.gif" />
                                <p>靓丽人生，从这里开始</p>
                                <div class="button">￥8999
                                    <div class="xk"><del>￥10099</del></div>
                                </div>
                            </div>
                        </a>
                        <a href="#">
                            <div class="pic"><img src="jsp/backstage/customer/images/by26.gif" />
                                <p>轻奢、简约唤醒生活</p>
                                <div class="button">￥1099
                                    <div class="xk"><del>￥1099</del></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="tehui">
            <div class="th">
                <h2>排行榜</h2>
                <a href="#">专属您的购物指南</a>
                <a href="#">
                    <div class="th_1">
                        <img src="jsp/backstage/customer/images/by34.gif" />
                        <img src="jsp/backstage/customer/images/by36.gif" />
                    </div>
                    <div class="th_2">
                        <img class="th_2_one" src="jsp/backstage/customer/images/by45.gif" />
                    </div>
                </a>
            </div>
            <div class="th2">
                <h2>会买专辑</h2>
                <a href="#">甄选优质好物</a>
                <div class="th_2">
                    <a href="#">
                        <img class="th_2_next" src="jsp/backstage/customer/images/by38.gif" />
                    </a>
                    <a href="#">外形出众，内部特别，内外兼修</a><br>
                    <a href="#">少就是多，经典不解释</a><br>
                    <a href="#">再一次改变世界，改变你</a><br>
                </div>
            </div>
            <div class="d_th3">
                <div class="xd_th3"></div>
                <div class="th3">
                    <h2>会逛</h2>
                    <a href="#">你想逛的都在这里</a>
                    <a href="#">
                        <div class="th_3">
                            <img src="jsp/backstage/customer/images/by40.gif" />
                            <img src="jsp/backstage/customer/images/by46.gif" />
                        </div>
                    </a>
                </div>
            </div>
            <a href="#">
                <div class="d_th4">
                    <div class="xd_th4"></div>
                    <div class="tu">
                        <img src="jsp/backstage/customer/images/by52.gif" />
                        <img src="jsp/backstage/customer/images/by63.gif" />
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="th5">
                    <div class="th_5">
                        <img src="jsp/backstage/customer/images/by58.gif" />
                        <img src="jsp/backstage/customer/images/by60.gif" />
                        <img src="jsp/backstage/customer/images/by70.gif" />
                        <img src="jsp/backstage/customer/images/by67.gif" />
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="th6">
                    <div class="th_6">
                        <img src="jsp/backstage/customer/images/by55.gif" />
                        <img src="jsp/backstage/customer/images/by68.jpg" />
                    </div>
                </div>
            </a>
        </div>
        <!--商品结束-->
    </div>
    <!--底部-->
    <div class="footer">
        <div class="foot">
            <p>2018，6+2购物网站 京ICP证070709号 | 电子公告服务规则</p>
            <p>广播电视台节目制作经营许可证 （京）字第0110号</p>
            <p>京公网安备13677788948号</p>
        </div>
    </div>
    <!--外部框架结束 -->
</div>

</body>
</html>
