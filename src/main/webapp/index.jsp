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
</head>
<body>
<!--整合网页最大框架-->
<div id="app">
    <!--顶部-->
    <div class="top">
        <!--顶部内容-->
        <div class="top_next">
            <ul class="nav">
                <li><a href="<%=basePath%>index.jsp" target="_parent">首页</a></li>
                <li><a href="jsp/backstage/customer/login.jsp" target="_parent">请登录</a></li>
                <li><a>购物车</a></li>
                <li><a>6+2会员</a></li>
                <li><a>我的订单</a></li>
                <li><a>联系客服</a></li>
                <li><a>更多</a></li>
            </ul>
            <!--顶部内容框架结束 -->
        </div>
        <!--顶部框架结束 -->
    </div>
    <!--搜索框开始-->
    <div id="header">
        <div class="header_next">
            <!--放置logo-->
            <div class="logo">
                <img src="jsp/backstage/customer/images/logo.jpg" />
            </div>
            <!--搜索框-->
            <div class="search">
                <div class="search_next">
                    <div class="form">
                        <input type="text" class="cla"/>
                    </div>
                    <button class="forms"><i class="fa fa-search"></i></button>
                </div>
            </div>
            <!--商品分类-->
            <div class="search">
                <div class="navitems">
                    <div class="navitems_left">
                        全部分类<i class="fa fa-angle-down" style="padding-left: 30px;"></i>
                    </div>
                    <div class="navitems_right">
                        <ul>
                            <li>秒杀</li>
                            <li>优惠券</li>
                            <li>闪购</li>
                            <li>大聚会</li>
                            <li>生活家电</li>
                            <li>今日新品</li>
                            <li>6+2服饰</li>
                            <li>6+2超市</li>
                        </ul>
                    </div>
                </div>
                <!--商品分类结束-->
            </div>
        </div>
        <!--搜索框结束-->
    </div>
    <!--中间框架-->
    <div id="central ">
        <div class="central_c1 central_c2">
            <!--左边部分-->
            <div class="fs1">
                <div class="car">
                    <ul class="cate">
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/phone.png"/>
                            <a class="cate_item_a">手机</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">运营商</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">智能数码</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/television.png"/>
                            <a class="cate_item_a">电视</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">空调</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">冰箱</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">洗衣机</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/cosmetics.png"/>
                            <a class="cate_item_a">化妆品</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">纸品清洁</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">宠物</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/computer.png"/>
                            <a class="cate_item_a">电脑办公</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">相加</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">DIY</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/shoes.png"/>
                            <a class="cate_item_a">鞋靴</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">箱包</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">钟表</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">珠宝</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/baby.png"/>
                            <a class="cate_item_a">母婴</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">玩具</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">车床</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">童装</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/furniture.png"/>
                            <a class="cate_item_a">家具</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">家装</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">家纺</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/food.png"/>
                            <a class="cate_item_a">食品</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">酒水</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">生鲜</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">特产</a>
                        </li>
                        <li class="cate_item">
                            <img src="jsp/backstage/customer/images/clothing.png"/>
                            <a class="cate_item_a">男装</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">女装</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">内衣</a>
                            <span class="cate_item_sp">/</span>
                            <a class="cate_item_a">配饰</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--中间内容-->
            <div class="fs2">
                <div class="fonst">
                    <div class="fonst_main">
                        <img src="jsp/backstage/customer/images/timg3.jpg"/>
                    </div>
                </div>
            </div>
            <!--右边内容-->
            <div class="fs3">
                <div class="rec">
                    <div class="rec_inner">
                        <div class="rec_item">
                            <img src="jsp/backstage/customer/images/rec_item1.gif" />
                        </div>
                        <div class="rec_item2">
                            <img src="jsp/backstage/customer/images/rec_item2.gif" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--中部框架结束-->
    </div>
    <!--商品展示开始-->
    <div class="floors">
        <div class="fonst_next1">
            <div class="fonst_next2">
                <a href="#" class="fonst_img"><img src="jsp/backstage/customer/images/time.gif" /></a>
            </div>
            <div class="fonst_next3">
                <div class="fonst_next3_list">
                    <div class="fonst_next3_inner">
                        <div class="fonst_next3_item">
                            <a href="#" class="lk">
                                <div class="lk_img">
                                    <img src="jsp/backstage/customer/images/fonst_item1.gif" />
                                </div>
                                <p class="img_name">巨水光控油收缩毛孔化妆水</p>
                                <!--价格-->
                                <div class="lk_price">
										<span class="lk_price_next">
											<i>￥</i>
											<span>1099</span>
										</span>
                                    <span class="lk_price_next2">
											<i>￥</i>
											<span>1999</span>
										</span>
                                </div>
                            </a>
                        </div>
                        <div class="fonst_next3_item">
                            <a href="#" class="lk">
                                <div class="lk_img">
                                    <img src="jsp/backstage/customer/images/fonst_item.gif" />
                                </div>
                                <p class="img_name">优质保温壶水壶特卖</p>
                                <!--价格-->
                                <div class="lk_price">
										<span class="lk_price_next">
											<i>￥</i>
											<span>499</span>
										</span>
                                    <span class="lk_price_next2">
											<i>￥</i>
											<span>699</span>
										</span>
                                </div>
                            </a>
                        </div>
                        <div class="fonst_next3_item">
                            <a href="#" class="lk">
                                <div class="lk_img">
                                    <img src="jsp/backstage/customer/images/fonst_item3.gif" />
                                </div>
                                <p class="img_name">靓丽人生，从这里开始</p>
                                <!--价格-->
                                <div class="lk_price">
										<span class="lk_price_next">
											<i>￥</i>
											<span>299</span>
										</span>
                                    <span class="lk_price_next2">
											<i>￥</i>
											<span>599</span>
										</span>
                                </div>
                            </a>
                        </div>
                        <div class="fonst_next3_item">
                            <a href="#" class="lk">
                                <div class="lk_img">
                                    <img src="jsp/backstage/customer/images/fonst_item4.gif" />
                                </div>
                                <p class="img_name">清奢，简约唤醒新生活</p>
                                <!--价格-->
                                <div class="lk_price">
										<span class="lk_price_next">
											<i>￥</i>
											<span>899</span>
										</span>
                                    <span class="lk_price_next2">
											<i>￥</i>
											<span>1099</span>
										</span>
                                </div>
                            </a>
                        </div>
                        <div class="fonst_next3_item">
                            <a href="#" class="lk5">
                                <div class="lk_img">
                                    <img src="jsp/backstage/customer/images/fonst_item.gif" />
                                </div>
                                <p class="img_name5">巨水光控油收缩毛孔化妆水</p>
                                <!--价格-->
                                <div class="lk_price">
										<span class="lk_price_next">
											<i>￥</i>
											<span>1099</span>
										</span>
                                    <span class="lk_price_next2">
											<i>￥</i>
											<span>1999</span>
										</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--商品展示结束-->
    </div>
    <!--推荐部分开始-->
    <div class="recommend">
        <div class="recommend_next">
            <div class="top box">
                <div class="box_hb">
                    <a class="box_hb_next">
                        <h2 class="box_hb_ti">排行榜</h2>
                        <h2 class="box_hb_ti2">专属你的购物指南</h2>
                    </a>
                </div>
                <div class="box_hd">
                    <div class="box_hd_next">
                        <div class="box_hd_next1">
                            <a class="box_item">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/naifen.gif"/>
                                </div>
                            </a>
                            <a class="box_item">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/phone.gif"/>
                                </div>
                            </a>
                            <a class="box_item1">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/naike.gif" style="width: 350px;height: 180px;"/>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="top box">
                <div class="box_hb">
                    <a class="box_hb_next">
                        <h2 class="box_hb_ti">会买专辑</h2>
                        <h2 class="box_hb_ti2">甄选优质好物</h2>
                    </a>
                </div>
                <div class="box_hd">
                    <div class="box_hd_next">
                        <div class="box_hd_next1">
                            <a class="box_item1">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/tuijian2.gif" style="width: 350px;height: 180px;"/>
                                </div>
                                <div class="box_item_next">
                                    <div class="box_item_name">
                                        <p>外形出众，内部特别，内外兼修</p><br />
                                        <p>少就是多，经典不解释</p><br />
                                        <p>再改变一次世界，改变你</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pianyi">
                <div class="top1 box1">
                    <div class="box_hb">
                        <a class="box_hb_next">
                            <h2 class="box_hb_ti">会逛</h2>
                            <h2 class="box_hb_ti2">你想逛的都在这里</h2>
                        </a>
                    </div>
                    <div class="box_hd">
                        <div class="box_hd_next">
                            <div class="box_hd_next1">
                                <a class="box_item1">
                                    <div class="box_item_next">
                                        <img src="jsp/backstage/customer/images/timg1.jpg" style="width: 350px;height: 180px;"/>
                                    </div>
                                    <div class="box_item_next">
                                        <img src="jsp/backstage/customer/images/right.jpg" style="width: 350px;height: 180px; padding-top: 20px;"/>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--推荐部分结束-->
    </div>
    <!--推荐第二部分开始-->
    <div class="recommend">
        <div class="recommend_next">
            <div class="top box">
                <div class="box_hd">
                    <div class="box_hd_next">
                        <div class="box_hd_next1">
                            <a class="box_item2">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/pan.jpg" style="width: 144px;height: 159px;"/>
                                </div>
                            </a>
                            <a class="box_item2">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/timg0.jpg" style="width: 144px;height: 159px;"/>
                                </div>
                            </a>
                            <a class="box_item2">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/xi.jpg" style="width: 144px;height: 159px;"/>
                                </div>
                            </a>
                            <a class="box_item2">
                                <div class="box_item_next">
                                    <img src="jsp/backstage/customer/images/bao.jpg" style="width: 144px;height: 159px;"/>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="top box">
                <div class="box_hd">
                    <div class="box_hd_next">
                        <div class="box_hd_next1">
                            <a class="box_item1">
                                <div class="box_item_next2">
                                    <img src="jsp/backstage/customer/images/tuijian2.gif" style="width: 350px;height: 180px;"/>
                                </div>
                                <div class="box_item_next2">
                                    <img src="jsp/backstage/customer/images/tuijian2.gif" style="width: 350px;height: 180px;"/>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pianyi">
                <div class="top1 box1">
                    <div class="box_hb">
                        <a class="box_hb_next">
                            <h2 class="box_hb_ti">会逛</h2>
                            <h2 class="box_hb_ti2">你想逛的都在这里</h2>
                        </a>
                    </div>
                    <div class="box_hd">
                        <div class="box_hd_next">
                            <div class="box_hd_next1">
                                <a class="box_item1">
                                    <div class="box_item_next">
                                        <img src="jsp/backstage/customer/images/timg1.jpg" style="width: 350px;height: 180px;"/>
                                    </div>
                                    <div class="box_item_next">
                                        <img src="jsp/backstage/customer/images/right.jpg" style="width: 350px;height: 180px; padding-top: 20px;"/>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--推荐部分结束-->
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
