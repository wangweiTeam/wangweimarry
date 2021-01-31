<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <title>我要开店</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">

    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/headerfooter.css" rel="stylesheet" type="text/css">

    <script type="text/javascript">
        /*图片读取成功回调函数*/
        function showImg1(input) {
            var file = input.files[0];
            var reader = new FileReader()

            reader.onload = function(e) {
                document.getElementById('positive').src=e.target.result
            }
            reader.readAsDataURL(file)
        }
        function showImg2(input) {
            var file = input.files[0];
            var reader = new FileReader()

            reader.onload = function(e) {
                document.getElementById('opposite').src=e.target.result
            }
            reader.readAsDataURL(file)
        }
        function showImg3(input) {
            var file = input.files[0];
            var reader = new FileReader()

            reader.onload = function(e) {
                document.getElementById('license').src=e.target.result
            }
            reader.readAsDataURL(file)
        }
    </script>
    <style>
        .opposite {
            float: left;
            margin-left: 430px;
            margin-top: -170px;
        }
        .but input{
            background-color: pink;
            width: 150px;
            height: 40px;
            /*padding: inherit;*/
            margin-left: 310px;
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
            <div class="user-bill">
                <!--店铺基本信息-->
                <form class="prove"style="margin-left: 30px; margin-top: 50px;">
                    <div style="margin-left: 0px">
                        <label for="storm-name" class="am-form-label" style="font-size: 14px">店铺名称:</label>
                        <input name="store-name" type="text" class="name" style="margin-left: 30px"placeholder="请输入店铺名">
                    </div>
                    <div style="position: relative;width: 500px;margin-left: 0px;">
                        <div class="positive" >
                            <input name="positive" id="positive-input" style="cursor: pointer;position: absolute; bottom: 0; left: 0;right: 0;opacity: 0; width: 250px;height: 150px;margin-left: 50px;margin-bottom: 20px" type="file" accept="image/gif, image/jpg, image/png" onchange="showImg1(this)"/>
                            <!-- 自定义按钮效果 -->
                            <div style="margin-top: 40px">
                                <span style="font-size: 14px;">身份证</span>（点击窗口上传照片）：
                                <img id="positive" style="border-s: 4px pink;width: 250px; height: 150px; vertical-align: middle;margin: 20px 50px" />
                            </div>
                        </div>
                        <div class="opposite">
                            <input name="opposite" id="opposite-input" style="cursor: pointer;position: absolute; opacity: 0;width: 250px;height: 150px; margin-left: 50px;margin-bottom: 20px" type="file" accept="image/gif, image/jpg, image/png" onchange="showImg2(this)"/>
                            <!-- 自定义按钮效果 -->
                            <div>
                                <img id="opposite" style="width: 250px; height: 150px; vertical-align: middle;" />
                            </div>
                        </div>
                    </div>
                    <p style="float: left;font-size: 10px;margin: -10px 50px">(反面)</p>
                    <p style="float: left;margin-left: 430px;font-size: 10px;margin-top: -10px">(正面)</p>
                    <div style="margin-top: 50px">
                        <input name="license" id="license-input" style="cursor: pointer;position: absolute; bottom: 0; left: 0;right: 0; opacity: 0;width: 600px;height: 300px;margin-left: 230px;margin-bottom: 50px" type="file" accept="image/gif, image/jpg, image/png" onchange="showImg3(this)"/>
                        <span style="font-size: 14px;">营业执照</span>（点击窗口上传照片）：
                        <img id="license" style="width: 250px; height: 150px; vertical-align: middle;margin: 20px 80px" />
                    </div>

                    <br>
                    <br>
                    <div class="but">
                        <input type="button"  value="提交">
                    </div>
                    <br>
                    <br>
                </form>
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
            <li class="person">
                <a href="personalorder.jsp">订单管理</a>
            </li>
            <li class="person">
                <a href="personaladd.jsp">收货地址</a>
            </li>
            <li class="person active">
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