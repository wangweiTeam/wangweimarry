<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <title>订单提交</title>
    <link rel="icon" href="img/favicon.png" size="16x16 32x32">

    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/orderComfirm.css">
    <link href="css/headerfooter.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <script src="https://www.jq22.com/jquery/vue.min.js"></script>
    <script src="js/areaList.js"></script>
</head>

<body>
<c:set var="path" scope="application" value="${pageContext.request.contextPath}"></c:set>
<!--头 -->
<div class="top">
    <div class="top-box">
        <ul id="top-right-box1">
            <li><a href="${path}/product?method=index">首页</a></li>
            <li><a href="personalcenter.jsp">个人中心</a></li
            <li><a href="#">商铺中心</a></li>
            <li><a href="#">客户服务</a></li>
            <li><span style="font-size: 11px">客服/投诉电话：xxx-xxx-xxxx</span></li>
        </ul>
    </div>
</div>

<div class="page-order-comfirm" id="orderComfirm">
    <div class="section-con" v-if="addrIsShow">
        <div class="sec-title-border clearfix">
            <h3>添加收货地址</h3>
        </div>
        <div class="addressAddBox" >
            <form action="":model="formItem" ref="formItem">
                <div class="addr-add-form">
                    <div class="div-form-gw">
                        <label class="label-gw"><span class="mark">*</span>收货人：</label>
                        <input type="text" placeholder="" required class="input-gw input-gw220" v-model="formItem.addr_person">
                    </div>
                    <div class="div-form-gw">
                        <label class="label-gw"><span class="mark">*</span>所在地区：</label>
                        <div class="div-three clearfix">
                            <div class="div-three-item">
                                <select name="province" class="select-gw province" v-model="formItem.addr_province">
                                    <option v-for="(provinceOne,index) in provinceList" v-bind:value="provinceOne.label">
                                        {{provinceOne.value}}
                                    </option>
                                </select>
                            </div>
                            <div class="div-three-item">
                                <select name="city" class="select-gw city" v-model="formItem.addr_city">
                                    <option v-for="(cityOne,index) in cityList" value="" v-bind:value="cityOne.label">
                                        {{cityOne.value}}
                                    </option>
                                </select>
                            </div>
                            <div class="div-three-item div-right">
                                <select  name="district" class="select-gw district" v-model="formItem.addr_district">
                                    <option v-for="(districtOne,index) in districtList" value="" v-bind:value="districtOne.label">
                                        {{districtOne.value}}
                                    </option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="div-form-gw">
                        <label class="label-gw">详细地址：</label>
                        <input type="text" placeholder="" class="input-gw input-gw480" v-model="formItem.addr_moreD" v-bind:placeholder="streetTip"/>
                    </div>
                    <div class="div-form-gw">
                        <div class="div-half clearfix">
                            <div class="div-half-item">
                                <label class="label-gw"><span class="mark">*</span>手机号码：</label>
                                <input type="tel" placeholder="" required  maxlength="11" class="input-gw input-gw220 input-cur-gw" v-model="formItem.addr_tel"/>
                            </div>
                            <div class="div-half-item div-right">
                                <label class="label-gw">固定电话</label>
                                <input type="text" placeholder="" class="input-gw input-gw220 input-error-gw" v-model="formItem.addr_ftel"/>
                            </div>
                        </div>
                    </div>
                    <div class="div-form-gw">
                        <label class="label-gw">邮箱：</label>
                        <input type="email" placeholder="" required class="input-gw input-gw480" v-model="formItem.addr_email"/>
                    </div>
                    <div class="addr-sumbit-gw">
                        <input type="button" value="保存收货地址" class="btn-gray-gw" @click="add"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="section-con">
        <div class="sec-title-border clearfix">
            <h3>添加收货地址</h3>
            <a href="javascript:void(0);" class="right"  @click="addrIsShow=true">新增地址</a>
        </div>
        <div class="addressBox clearfix">
            <div class="address-item" v-for="(item,index) in addressList" :key="index" :class="{'selected':item.selected}" @click="selecteAddr(index)">
                <div class="address-item-in">
                    <div>收件人：{{item.addr_person}}</div>
                    <div>地址：{{item.addr_province + item.addr_city + item.addr_district + item.addr_moreD}}</div>
                    <div>电话：{{item.addr_tel}}</div>
                    <div class="delete" @click.stop="deleteAddress(index)"><i class="icon_delete"></i></div>
                </div>
            </div>
        </div>
        <div class="sec-title-border clearfix">
            <h3>配送方式</h3>
        </div>
        <div class="style-list delivery">
            <ul class="clearfix">
                <li :class="{'selected':delivery==1}" @click="delivery = 1">快递上门</li>
                <li class="div-right" :class="{'selected':delivery==2}" @click="delivery = 2">上门自提</li>
            </ul>
        </div>
        <div class="sec-title-border clearfix">
            <h3>支付方式</h3>
        </div>
        <div class="style-list pay">
            <ul class="clearfix">
                <li :class="{'selected':payment==1}" @click="payment = 1">支付宝支付</li>
                <li class="div-right" :class="{'selected':payment==2}" @click="payment = 2">微信支付</li>
                <li :class="{'selected':payment==3}" @click="payment = 3">货到付款</li>
            </ul>
        </div>
        <div class="sec-title-border mb0 clearfix">
            <h3>产品详情</h3>
        </div>
        <div class="orderBox">
            <div class="orderC-table">
                <table cellspacing="0" cellpadding="0" border="0" width="100%" class="orderC-tb">
                    <thead>
                    <tr>
                        <th width="60%">订单详情 </th>
                        <th width="20%">收件人</th>
                        <th width="20%">金额</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(item,index) in productList" :key="index">
                        <td class="text-left"><div class="order-gw clearfix">
                            <div class="order-img"><img :src="item.pro_img"/></div>
                            <div class="order-sum">
                                <h2><a :href="item.pro_url">{{item.pro_name}}</a></h2>
                                <div class="parameter">{{item.pro_dec}}</div>
                            </div>
                        </div></td>
                        <td>{{item.pro_person}}</td>
                        <td><span class="noTel">总额</span><span class="priceD">￥{{item.pro_price.toFixed(2)}}</span></td>
                    </tr>
                    </tbody>
                </table>
                <div class="orderC-total">
                    <div class="order-t">
                        <dl class="clearfix">
                            <dd class="dl_ddL">商品总额：</dd>
                            <dd class="dl_ddR">￥{{getTotal1.totalPrice.toFixed(2)}}</dd>
                        </dl>
                    </div>
                    <div class="order-fare">
                        <dl class="clearfix">
                            <dd class="dl_ddL">运　　费：</dd>
                            <dd class="dl_ddR">￥{{freight.toFixed(2)}}</dd>
                        </dl>
                    </div>
                    <div class="order-sum">
                        <dl class="clearfix">
                            <dd class="dl_ddL">应付总额：</dd>
                            <dd class="dl_ddR"><span class="fontBig">￥{{(getTotal1.totalPrice + freight).toFixed(2)}}</span></dd>
                        </dl>
                    </div>
                </div>
                <div class="order-message">
                    <dl class="clearfix">
                        <dd class="dl_ddL">给卖家留言：</dd>
                        <dd class="dl_ddR">
                            <textarea class="textarea-gw" placehold="对本次交易补充说明" v-model="msg" maxlength="85"></textarea>
                            <span>{{msg.length}}/85</span>
                        </dd>
                    </dl>
                </div>
                <div class="clear"></div>
                <div class="order-submit">
                    <a href="cart.jsp" class="a_back">返回购物车修改</a>
                    <a href="#" class="btn-red btn-submit">提交订单</a>
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
</body>
<script>
    var res = [];
    new Vue({
        el:'#orderComfirm',
        data:{
            areaList: areaList,
            addrIsShow: false,
            provinceValue:'',
            cityValue:'',
            districtValue:'',
            formItem:{
                addr_person: '',
                addr_province: '',
                addr_city: '',
                addr_district: '',
                addr_moreD: '',
                addr_tel: '',
                addr_ftel: '',
                addr_email: ''

            },
            productList:[
                {
                    'pro_name': '婚纱',//产品名称
                    'pro_url': '#',//产品链接
                    'pro_dec': '颜色：白色',//产品参数
                    'pro_person': '陈某某',//收货人
                    'pro_img': 'img/5.jpg',//图片链接
                    'pro_price': 399//单价
                },
                {
                    'pro_name': '伴娘服',//产品名称
                    'pro_url': '#',//产品链接
                    'pro_dec': '颜色：粉色',//产品参数
                    'pro_person': '王某某',//收货人
                    'pro_img': 'img/4.jpg',//图片链接
                    'pro_price': 399//单价
                }
            ],
            addressList: [
                {
                    'addr_person': '某某1',
                    'addr_province':'福建省',
                    'addr_city':'厦门市',
                    'addr_district':'思明区',
                    'addr_moreD':'某某路XX号',
                    'addr_tel':'12345678901',
                    'addr_ftel':'0592-1234567',
                    'addr_email':'xxxxx@xxxx.com',
                    'selected': true

                },
                {
                    'addr_person': '某某2',
                    'addr_province':'广东省',
                    'addr_city':'深圳市',
                    'addr_district':'某某区',
                    'addr_moreD':'某某路XX号',
                    'addr_tel':'12345678901',
                    'addr_ftel':'0592-1234567',
                    'addr_email':'xxxxx@xxxx.com',
                    'selected': false
                },
                {
                    'addr_person': '某某3',
                    'addr_province':'某某省',
                    'addr_city':'某某市',
                    'addr_district':'某某区',
                    'addr_moreD':'某某路XX号',
                    'addr_tel':'12345678901',
                    'addr_ftel':'0592-1234567',
                    'addr_email':'xxxxx@xxxx.com',
                    'selected': false
                }
            ],
            freight: 10,//运费
            msg: '',//留言
            delivery: 1,//配送方式
            payment: 1,//支付方式
            countNum1: 0
        },
        mounted:function(){
            var _this = this;

        },
        computed: {
            getTotal1:function(){
                //价格总和
                var _proList=this.productList,totalPrice=0;
                for(var i=0,len=_proList.length;i<len;i++){
                    //总价累加
                    totalPrice+=_proList[i].pro_price;
                }
                //选择产品的件数就是_proList.length，总价就是totalPrice
                return {totalPrice:totalPrice}
            },
            provinceList: function () {
                res = [{"label": "", "value": "-- 请选择省份 --"}];
                areaList.forEach(function (one) {
                    res.push({"label": one.label, "value": one.value})
                });
                return res
            },
            cityList: function () {
                var _this = this;
                if ("" == _this.formItem.addr_province) {
                    res = [{"label": "", "value": "-- 请选择省份 --"}];
                } else {
                    res = [{"label": "", "value": "-- 请选择市 --"}];
                    areaList.forEach(function (one) {
                        if (one.label == _this.formItem.addr_province) {
                            // 判断是否需要清空下级值
                            if("" != _this.formItem.addr_city && _this.formItem.addr_province != _this.formItem.addr_city.substr(0,2)){
                                _this.formItem.addr_city = "";
                                _this.formItem.addr_district = "";
                            }
                            one.children.forEach(function (item) {
                                res.push({"label": item.label, "value": item.value})
                            });
                        }
                    });
                }
                return res
            },
            districtList: function () {
                var _this = this;
                if ("" == _this.formItem.addr_province) {
                    res = [{"label": "", "value": "-- 请选择省份 --"}];
                } else if ("" == _this.formItem.addr_city) {
                    res = [{"label": "", "value": "-- 请选择市 --"}];
                } else {
                    res = [{"label": "", "value": "-- 请选择县 --"}];
                    areaList.forEach(function (one) {
                        if (one.label == _this.formItem.addr_province) {
                            one.children.forEach(function (item) {
                                if (item.label == _this.formItem.addr_city) {
                                    // 判断是否需要清空下级值
                                    if("" != _this.formItem.addr_district && _this.formItem.addr_city != _this.formItem.addr_district.substr(0,4)){
                                        _this.formItem.addr_district = "";
                                    }
                                    item.children.forEach(function (value) {
                                        res.push({"label": value.label, "value": value.value})
                                    });
                                }
                            });
                        }
                    });
                }
                return res
            },
            streetTip:function () {
                var _this = this;
                if ("" == _this.formItem.addr_province) {
                    res = "-- 请选择省份 --";
                } else if ("" == _this.formItem.addr_city) {
                    res = "-- 请选择市 --";
                } else if ("" == _this.formItem.addr_district) {
                    res = "-- 请选择县 --";
                } else {
                    res = "-- 请填写街道 --";
                }
                return res;
            }
        },
        methods:{
            selecteAddr:function(index){
                //遍历addressList
                for (var i = 0, len = this.addressList.length; i < len; i++) {
                    this.addressList[i].selected = false;
                }
                this.addressList[index].selected = true;
            },
            selectProduct:function(_isSelect){
                //遍历productList
                for (var i = 0, len = this.productList.length; i < len; i++) {
                    this.productList[i].select  = !_isSelect;
                }
            },
            //删除地址
            deleteAddress:function (index) {
                //根据索引删除addressList的记录
                this.addressList.splice(index,1);
            },
            add(){
                if(this.formItem.addr_person==null || this.formItem.addr_person==''){alert('收货人不能为空'); return false;}
                let reg = /^1[0-9]{10}$/;
                if(this.formItem.addr_tel==null || this.formItem.addr_tel=='' || this.formItem.addr_tel.length <= 10 || !reg.test(this.formItem.addr_tel)){alert('请输入正确的手机号码'); return false;}
                let atpos=this.formItem.addr_email.indexOf("@");
                let dotpos=this.formItem.addr_email.lastIndexOf(".");
                if (atpos<1 || dotpos<atpos+2 || dotpos+2>=this.formItem.addr_email.length){
                    alert("不是一个有效的 e-mail 地址");
                    return false;
                }
                var _this = this;
                _this.areaList.forEach(function (one) {
                    if (one.label == _this.formItem.addr_province) {
                        _this.provinceValue = one.value;
                        one.children.forEach(function (item) {
                            if (item.label == _this.formItem.addr_city) {
                                _this.cityValue = item.value;
                                item.children.forEach(function (value) {
                                    if (value.label == _this.formItem.addr_district) {
                                        _this.districtValue = value.value;
                                    }
                                });
                            }
                        });
                    }
                });
                var addrli={addr_person:this.formItem.addr_person, addr_province:this.provinceValue, addr_city:this.cityValue, addr_district:this.districtValue, addr_moreD:this.formItem.addr_moreD, addr_tel:this.formItem.addr_tel, addr_ftel:this.formItem.addr_ftel, addr_email:this.formItem.addr_email, selected:false};
                this.addressList.push(addrli);
                this.formItem.addr_person = this.formItem.addr_province = this.formItem.addr_city = this.formItem.addr_district = this.formItem.addr_moreD = this.formItem.addr_tel = this.formItem.addr_ftel = this.formItem.addr_email = '';
                this.addrIsShow = false;
            }
        }
    })
</script>
</html>