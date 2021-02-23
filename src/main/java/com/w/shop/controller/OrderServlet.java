package com.w.shop.controller;

import com.w.shop.entity.*;
import com.w.shop.service.OrderService;
import com.w.shop.utils.CommonUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

@WebServlet(name = "OrderServlet",urlPatterns = "/order")
public class OrderServlet extends BaseServlet {

    private OrderService service = new OrderService();

    //提交订单
    public void submitOrder(HttpServletRequest request,HttpServletResponse response) {
        //大前提   当前已经是登录状态
        HttpSession session = request.getSession();

        //创建订单
        Orders orders = new Orders();

        //随机产生订单编号
        orders.setOid(CommonUtils.getUUID().replaceAll("-", ""));
        //设置下单时间
        orders.setOrdertime(new Date());
        //设置订单状态 0-未支付 1-已支付
        orders.setState(0);

        //从会话中获得登陆者信息，来设置下单者
        Users user = (Users) session.getAttribute("user");
        orders.setUser(user);

        //从会话中获取购物车信息
        Cart cart = (Cart) session.getAttribute("cart");

        //设置订单总金额
        orders.setTotal(cart.getTotal());

        //设置订单明细
        Map<String, CartItem> cartMap = cart.getMap();
        for (Map.Entry<String, CartItem> entry : cartMap.entrySet()) {
            //获得购物车明细
            CartItem cartItem = entry.getValue();

            //创建订单明细
            OrderItem orderItem = new OrderItem();

            //设置订单明细编号
            orderItem.setItemid(CommonUtils.getUUID().replaceAll("-", ""));
            //设置商品购买数量
            orderItem.setCount(cartItem.getBuyNum());
            //设置商品购买的小计
            orderItem.setSubtotal(cartItem.getSubTotal());
            //设置购买的商品信息
            orderItem.setProduct(cartItem.getProduct());
            //设置所属的订单
            orderItem.setOrder(orders);

            //设置订单中的多个订单明细
            orders.getItemList().add(orderItem);
        }
    }

}
