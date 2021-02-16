<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <title>详情页</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">

    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/headerfooter.css" rel="stylesheet" type="text/css">
    <link href="css/shouye.css" rel="stylesheet">
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="js/modernizr-custom-v2.7.1.min.js"></script>
    <script>
        $(document).ready(function(){
            var $miaobian=$('.Xcontent08>div');
            var $huantu=$('.Xcontent06>img');
            var $miaobian1=$('.Xcontent26>div');
            $miaobian.mousemove(function(){miaobian(this);});
            $miaobian1.click(function(){miaobian1(this);});
            function miaobian(thisMb){
                for(var i=0; i<$miaobian.length; i++){
                    $miaobian[i].style.borderColor = '#dedede';
                }
                thisMb.style.borderColor = '#cd2426';

                $huantu[0].src = thisMb.children[0].src;
            }
            function miaobian1(thisMb1){
                for(var i=0; i<$miaobian1.length; i++){
                    $miaobian1[i].style.borderColor = '#dedede';
                }
//		thisMb.style.borderColor = '#cd2426';
                $miaobian.css('border-color','#dedede');
                thisMb1.style.borderColor = '#cd2426';
                $huantu[0].src = thisMb1.children[0].src;
            }
            $(".Xcontent33").click(function(){
                var value=parseInt($('.input').val())+1;
                $('.input').val(value);
            })
            $(".Xcontent32").click(function(){
                var num = $(".input").val()
                if(num>0){
                    $(".input").val(num-1);
                }
            })
        })
    </script>
</head>
<body>
<c:set value="${pageContext.request.contextPath}" scope="application" var="path"></c:set>
<!--头 -->
<div class="top">
    <div class="top-box">
        <ul id="top-right-box1">
            <li><a href="${path}/product?method=index">首页</a></li>
            <c:if test="${sessionScope.user==null}">
                <li><a href="login.jsp">登录/注册</a></li>
            </c:if>
            <c:if test="${sessionScope.user!=null}">
                <li>欢迎${sessionScope.user.username}/<a href="${path}/user?method=logout">退出</a></li>
            </c:if>
            <li><a href="personalcenter.jsp">个人中心</a></li>
            <li><a href="#">商铺中心</a></li>
            <li><a href="#">客户服务</a></li>
            <li><span style="font-size: 11px">客服/投诉电话：xxx-xxx-xxxx</span></li>
        </ul>
    </div>
</div>

<div class="Xcontent">
    <ul class="Xcontent01">

        <div class="Xcontent06"><img src="${path}/${product.pimage}" width="440px" height="440px"></div>
        <ol class="Xcontent08">
            <div class="Xcontent07"><img src="${path}/${product.pimage}"></div>
            <div class="Xcontent09"><img src="${path}/${product.pimage}"></div>
            <div class="Xcontent10"><img src="${path}/${product.pimage}"></div>
            <div class="Xcontent11"><img src="${path}/${product.pimage}"></div>
            <div class="Xcontent12"><img src="${path}/${product.pimage}"></div>
        </ol>
        <ol class="Xcontent13">
            <div class="Xcontent14"><a href="#"><p>${product.pname}</p></a></div>
            <div class="Xcontent15"><img src="images/shangpinxiangqing/X11.png"></div>
            <div class="Xcontent16"><p>${cname}</p></div>
            <div class="Xcontent17">
                <p class="Xcontent18">售价</p>
                <p class="Xcontent19">￥<span>${product.shop_price}</span></p>
                <div class="Xcontent20">
                    <p class="Xcontent21">促销</p>
                    <img src="images/shangpinxiangqing/X12.png">
                    <p class="Xcontent22">领610元新年礼券，满再赠好礼</p>
                </div>
                <dproductbed.jspiv class="Xcontent23">
                    <p class="Xcontent24">服务</p>
                    <p class="Xcontent25">30天无忧退货&nbsp;&nbsp;&nbsp;&nbsp;       48小时快速退款 &nbsp;&nbsp;&nbsp;&nbsp;        满88元免邮</p>
                </dproductbed.jspiv>

            </div>
            <div class="Xcontent26">
                <p class="Xcontent27">颜色</p>
                <div class="Xcontent28"><img  src="${path}/${product.pimage}"></div>
                <div class="Xcontent29"><img  src="${path}/${product.pimage}"></div>
            </div>
            <div class="Xcontent30">
                <p class="Xcontent31">数量</p>
                <div class="Xcontent32"><img src="images/shangpinxiangqing/X15.png"></div>
                <form>
                    <input class="input" value="1">
                </form>
                <div class="Xcontent33"><img src="images/shangpinxiangqing/16.png"></div>

            </div>
            <div class="Xcontent34"><a href="#"><img src="images/shangpinxiangqing/X17.png"></a></div>
            <div class="Xcontent35"><a href="#"><img src="images/shangpinxiangqing/X18.png"></a></div>
        </ol>
    </ul>
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