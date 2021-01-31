<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%--    <meta charset="UTF-8">--%>
    <title>婚品汇——WeddingCollection</title>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.fly.min.js"></script>
    <script src="js/public.js"></script>
    <script>document.createElement("top")</script>
    <script>document.createElement("search")</script>
    <script>document.createElement("light")</script>
    <script>document.createElement("light1")</script>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css" />
</head>
<body>
<!--头部-->
<div class="top">
    <div class="top-box">
        <div class="dis_add" style="margin-left: 15px">
            <p style="font-size: 10px;">所在地区：
                <span style="font-size: 10px;">安徽</span>
                <img src="img/jt_t.png" style="display:block; width:7px; height:4px; /*margin-top:14px;*/ margin-left:30px">
            </p>
            <div class="hide_add">
                <ul>
                    <li><a href="javascript:void(0)">北京</a></li>
                    <li><a href="javascript:void(0)">上海</a></li>
                    <li><a href="javascript:void(0)">天津</a></li>
                    <li><a href="javascript:void(0)">重庆</a></li>
                    <li><a href="javascript:void(0)">河北</a></li>
                    <li><a href="javascript:void(0)">山西</a></li>
                    <li><a href="javascript:void(0)">河南</a></li>
                    <li><a href="javascript:void(0)">辽宁</a></li>
                    <li><a href="javascript:void(0)">吉林</a></li>
                    <li><a href="javascript:void(0)">江苏</a></li>
                    <li><a href="javascript:void(0)">浙江</a></li>
                    <li><a href="javascript:void(0)">黑龙江</a></li>
                    <li><a href="javascript:void(0)">山东</a></li>
                    <li><a href="javascript:void(0)" class="selected">安徽</a></li>
                    <li><a href="javascript:void(0)">福建</a></li>
                    <li><a href="javascript:void(0)">湖北</a></li>
                    <li><a href="javascript:void(0)">湖南</a></li>
                    <li><a href="javascript:void(0)">内蒙古</a></li>
                    <li><a href="javascript:void(0)">广东</a></li>
                    <li><a href="javascript:void(0)">广西</a></li>
                    <li><a href="javascript:void(0)">江西</a></li>
                    <li><a href="javascript:void(0)">四川</a></li>
                    <li><a href="javascript:void(0)">海南</a></li>
                    <li><a href="javascript:void(0)">贵州</a></li>
                    <li><a href="javascript:void(0)">云南</a></li>
                    <li><a href="javascript:void(0)">西藏</a></li>
                    <li><a href="javascript:void(0)">陕西</a></li>
                    <li><a href="javascript:void(0)">甘肃</a></li>
                    <li><a href="javascript:void(0)">青海</a></li>
                    <li><a href="javascript:void(0)">宁夏</a></li>
                    <li><a href="javascript:void(0)">新疆</a></li>
                    <li><a href="javascript:void(0)">台湾</a></li>
                    <li><a href="javascript:void(0)">香港</a></li>
                    <li><a href="javascript:void(0)">澳门</a></li>
                </ul>
            </div>
        </div>
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

<div class="head-logo">
    <form id="schbox" style="width: 400px; height: 30px; border: #c3488d solid 1px;">
        <input type="text" placeholder="请输入查询关键词" style="border: hidden; width: 320px; height: 26px;"/>
        <input type="submit" value="GO" style=" font-size: 12px; width: 26px; height: 26px;/*上下留有1px空隙，美观一点*/"/>
    </form>
    <div class="c-logo">
        <img src="img/logo0.jpg" style="height: 150px">
    </div>
</div>
<!--首页导航-->
<div class="wraper" style="margin-top: 70px">
    <div class="nav" style="font-size: 20px;font-family:楷体">
        <ul id="menus">
            <li><a href="index.jsp">商 城 首 页</a></li>
            <li style="background-color:#ea5dac;"><a href="#" style="color:#ffffff;">婚 纱 礼 服</a></li>
            <li><a href="#">婚 房 布 置</a></li>
            <li><a href="#">婚 庆 床 品</a></li>
            <li><a href="#">婚 宴 酒 水</a></li>
            <li><a href="#">喜 糖 请 柬</a></li>
        </ul>
    </div>
</div>

<!--商品分类展示-->
<div class="container" style="margin-top: 70px; margin-bottom: 30px;">

    <!-- 商品图片部分 -->
    <div class="row"  style="margin-left: 130px">

        <!-- 右边  商品图片展示 -->
        <div class="col-lg-10 col-md-10">

            <!-- 上一行 -->
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="products/1/c_0001.jpg" style="width: 130px"/></a><br>
                    <p><a href="#">中式婚纱</a></p>
                    <p><a href="#">￥1399</a></p>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="products/1/c_0010.jpg" style="width: 130px"/></a><br>
                    <p><a href="#">中式婚礼秀禾服</a></p>
                    <p><a href="#">￥2699</a></p>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="products/1/c_0011.jpg" style="width: 130px"/></a><br>
                    <p><a href="#">秀禾服</a></p>
                    <p><a href="#">￥2399</a></p>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="products/1/c_0012.jpg" style="width: 130px"/></a><br>
                    <p><a href="#">韩式婚纱伴娘服</a></p>
                    <p><a href="#">￥1899</a></p>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="products/1/c_0013.jpg" style="width: 130px"/></a><br>
                    <p><a href="#">婚纱</a></p>
                    <p><a href="#">￥2599</a></p>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="products/1/c_0014.jpg" style="width: 130px"/></a><br>
                    <p><a href="#">森系轻婚纱礼服</a></p>
                    <p><a href="#">￥1899</a></p>
                </div>
            </div>

        </div>

    </div>

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

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        var aa = 0;
        var size = $(".banner_select>ul li").size(); //5
        var img_size = $(".banner_wrap>ul li").size(); //5
        for(var i = 0; i <= size - 1; i++) {
            $(".banner_select>ul li")[i].id = i;
            $(".banner_wrap>ul li")[i].id = i;
        }

        $(".banner_select>ul li").hover(function() {
            aa = this.id
            $(".J_trigger_line").css({
                "left": (this.id * 195)
            })
            $(".banner_wrap>ul li").eq(this.id).addClass("on").siblings(this).removeClass("on");;
            $(".banner_wrap>ul li").eq(this.id).fadeIn(500).siblings(this).fadeOut(500);
        });

        function move() {
            $(".J_trigger_line").css({
                "left": (aa * 195)
            })
            $(".banner_wrap>ul li").eq(aa).addClass("on").siblings(aa).removeClass("on");
            $(".banner_wrap>ul li").eq(aa).fadeIn(500).siblings(aa).fadeOut(500);
        }

        var t = setInterval(lunbo, 2000);

        function lunbo() {
            if(aa == img_size) {
                aa = 0;
            }
            move();
            aa++
        }
        $(".banner_wrap").hover(function() {
            clearInterval(t);
        }, function() {
            t = setInterval(lunbo, 2000);
        });
        $(".left").click(function() {
            if(aa <= 1) {
                aa = 6;
            }
            aa -= 2;
            move();
            aa++;
        })
        $(".right").click(function() {
            if(aa == 5) {
                aa = 0;
            }
            aa++;
            aa--;
            move();
            aa++;
        })
    })

</script>
</body>
</html>