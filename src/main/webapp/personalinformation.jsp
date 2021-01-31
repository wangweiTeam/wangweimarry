<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <title>我的资料</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">

    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/infstyle.css" rel="stylesheet" type="text/css">
    <link href="css/headerfooter.css" rel="stylesheet" type="text/css">
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="../../../3/js/areaList.js"></script>
    <script type="text/javascript" src="js/select.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#date").selectDate()

            $("#days").focusout(function(){
                var year = $("#year option:selected").html()
                var month = $("#month option:selected").html()
                var day = $("#days option:selected").html()
                console.log(year+month+day)
            })

        })
    </script>

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

            <div class="user-info">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
                </div>
                <hr/>
                <!--头像 -->
                <div class="user-infoPic">
                    <div class="filePic">
                        <input name="filePic" class="inputPic" type="file" accept="image/gif, image/jpg, image/png" style="opacity: 0;width: 100px;height: 100px;border-radius: 50px" onchange="showImg1(this)"/>
                        <img src="img/头像.png" id="am-circle am-img-thumbnail" style="width: 100px;height: 100px;border-radius: 50px;"/>
                    </div>

                    <p class="am-form-help">头像</p>

                    <div class="info-m">
                        <div><b>用户名：<i>小叮当</i></b></div>
                        <div class="user-tel">
                            <b>联系方式：</b>读入注册时的手机号
                        </div>
                        <div class="user-email">
                            <b>邮箱：</b>读入注册时的邮箱
                        </div>
                    </div>
                </div>

                <!--个人信息 -->
                <div class="info-main">
                    <form class="am-form am-form-horizontal">

                        <div class="am-form-group">
                            <label for="user-name" class="am-form-label">姓名</label>
                            <div class="am-form-content">
                                <input type="text" id="user-name" placeholder="请输入真实姓名">

                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">性别</label>
                            <div class="am-form-content sex">
                                <label class="am-radio-inline">
                                    <input type="radio" name="radio10" value="male" data-am-ucheck> 男
                                </label>
                                <label class="am-radio-inline">
                                    <input type="radio" name="radio10" value="female" data-am-ucheck> 女
                                </label>
                                <label class="am-radio-inline">
                                    <input type="radio" name="radio10" value="secret" data-am-ucheck> 保密
                                </label>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-birth" class="am-form-label">出生日期</label>
                            <div id="date" style="margin-left: 90px;">
                                <select name="year" id="year" style="padding: 5px;outline: none; width: 200px">
                                    <option value="">选择年份</option>
                                </select>
                                <select name="month" id="month" style="padding: 5px;outline: none; width: 200px">
                                    <option value="">选择月份</option>
                                </select>
                                <select id="days" class="day" style="padding: 5px;outline: none; width: 200px">
                                    <option value="">选择日期</option>
                                </select>
                            </div>
                        </div>

                        <br>
                        <br>
                        <div class="am-form-group">
                            <label for="user-account" class="am-form-label">银行卡号</label>
                            <div class="am-form-content">
                                <input type="text" id="user-account" placeholder="请输入银行卡号">
                            </div>
                        </div>
                        <div class="am-form-button">
                            <input type="button" value="                   提交">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <br>
    <br>
    <aside class="menu">
        <ul>
            <li class="person">
                <a href="personalcenter.jsp">个人中心</a>
            </li>
            <li class="person active">
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