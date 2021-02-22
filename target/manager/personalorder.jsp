<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <title>订单管理</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/orstyle.css" rel="stylesheet" type="text/css">
    <link href="css/headerfooter.css" rel="stylesheet" type="text/css">

    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>

    <style>

        .am-form-button input{
            background-color: pink;
            width: 150px;
            height: 40px;
            margin-left: 270px;
            color: white;
        }
    </style>
</head>

<body>
<!--头 -->
<div class="top">
    <div class="top-box">
        <ul id="top-right-box1">
            <li><a href="index.jsp">首页</a></li>
            <li><a href="login.jsp">登录/注册</a></li>
            <li><a href="personalcenter.jsp">个人中心</a></li>
            <li><a href="#">商铺中心</a></li>
            <li><a href="#">客户服务</a></li>
            <li><span style="font-size: 11px">客服/投诉电话：xxx-xxx-xxxx</span></li>
        </ul>
    </div>
</div>

<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-order">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">所有订单</a></li>
                        <li><a href="#tab2">待付款</a></li>
                        <li><a href="#tab3">待发货</a></li>
                        <li><a href="#tab4">待收货</a></li>
                        <li><a href="#tab5">待评价</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->
                                    <div class="order-status5">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="img/3.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>喜糖盒</p>
                                                                    <p class="info-little">颜色：正红
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            399.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：409.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易成功</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            删除订单</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>
                        <div class="am-tab-panel am-fade" id="tab2">

                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status1">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="img/5.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>婚纱</p>
                                                                    <p class="info-little">颜色：白
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            399.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>


                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：409.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">等待买家付款</p>
                                                            <p class="order-info"><a href="#">取消订单</a></p>

                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="pay.html">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                一键支付</div></a>
                                                    </li>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab3">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status2">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="img/6.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>中式婚纱</p>
                                                                    <p class="info-little">颜色：正红色
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            399.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>


                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">买家已付款</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            提醒发货</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab4">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status3">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="img/3.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>喜糖盒</p>
                                                                    <p class="info-little">颜色：正红色
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            399.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>



                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：409.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">卖家已发货</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                            <p class="order-info"><a href="#">延长收货</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            确认收货</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab5">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <!--不同状态的订单	-->
                                    <div class="order-status4">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>

                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="img/4.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>伴娘服</p>
                                                                    <p class="info-little">颜色：粉色
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            399.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：409.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易成功</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="commentlist.html">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                评价商品</div>
                                                        </a>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <aside class="menu">
        <ul>
            <li class="person">
                <a href="personalcenter.jsp">个人中心</a>
            </li>
            <li class="person">
                <a href="personalinformation.jsp">我的资料</a>
            </li>
            <li class="person active">
                <a href="personalorder.jsp">订单管理</a>
            </li>
            <li class="person">
                <a href="personaladd.jsp">收货地址</a>
            </li>
            <li class="person">
                <a href="openstore.jsp">我要开店</a>
            </li>
        </ul>

    </aside>

</div>
<!--footer-->
<div class="foot">
    <div class="foot-box">
        <ul>
            <li><a href="#">诚征英才</a>|</li>
            <li><a href="#">联系我们</a>|</li>
            <li><a href="#">支付方式</a>|</li>
            <li><a href="#">配送方式</a>|</li>
            <li><a href="#">服务声明</a>|</li>
            <li><a href="#">法律声明</a>|</li>
            <li><a href="#">广告声明</a></li>
        </ul>
        <br>
        <p>Copyright &copy; 2020-2026 婚品汇 版权所有</p>
    </div>
</div>
</body>
</html>