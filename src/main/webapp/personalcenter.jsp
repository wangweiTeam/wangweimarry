<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">

    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/systyle.css" rel="stylesheet" type="text/css">
    <link href="css/headerfooter.css" rel="stylesheet" type="text/css">

    <style>
        .wrap-list{
            height: 160px;
        }
        .p{
            width: 160px;
            height: 160px;
            border-radius: 80px;
            background-color: pink;
            float: left;
            margin-top: 20px;
            text-align: center;
            color: floralwhite;
            font-size: 20px;
            line-height: 160px;
        }
        .p:hover{
            background-color: #F08AD1;
            color: #ffffff;
        }
        .order{
            margin-left: 40px;
            margin-top: 100px;
        }
        .cart{
            margin-left: 60px;
        }
        .customer{
            margin-left: 60px;
            margin-top: 100px;
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
            <div class="wrap-left" style="height: 585px">
                <div class="wrap-list" style="height: 585px;background-color: #FFFFFF">
                    <div class="m-user">
                        <!--个人信息-->
                        <div class="m-bg"></div>
                        <div class="m-userinfo">
                            <div class="m-baseinfo">
                                <a href="information.html">
                                    <img src="img/头像.png">
                                </a>
                                <em class="s-name">(小叮当)<span class="vip1"></em>
                                <div class="s-prestige am-btn am-round">
                                    </span>会员福利</div>
                            </div>
                            <div class="m-right">
                                <div class="m-new">
                                    <a href="#"><i class="am-icon-bell-o"></i>消息</a>
                                </div>
                                <div class="m-address">
                                    <a href="personaladd.jsp" class="i-trigger">我的收货地址</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pmain">
                        <a href="personalorder.jsp"><div class="p order">订单</div></a>
                        <a href="cart.jsp"><div class="p cart">购物车</div></a>
                        <a href="#"><div class="p customer">客户服务</div></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="personalcenter.jsp">个人中心</a>
            </li>
            <li class="person">
                <a href="personalinformation.jsp">我的资料</a>
            </li>
            <li class="person">
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