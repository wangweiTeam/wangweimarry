package com.w.shop.controller;

import com.w.shop.entity.Cart;
import com.w.shop.entity.CartItem;
import com.w.shop.entity.Product;
import com.w.shop.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "CartServlet",urlPatterns = "/cart")
public class CartServlet extends BaseServlet {
    private ProductService pService = new ProductService();

    //加入购物车
    public void addCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取pid
        String pid = request.getParameter("pid");

        //获取购买数量
        int buyNum = Integer.parseInt(request.getParameter("buyNum"));

        //根据pid来获取商品详细信息
        Product product = pService.viewProductByPid(pid);

        //获得当前加入商品的总价
        double subTotal = buyNum * product.getShop_price();

        //获得当前会话的Cart对象
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");

        //如果时第一次从会话中获得购物车信息
        if (cart==null){
            cart = new Cart();
        }

        double newSubTotal = subTotal;

        //获得当前会话中购物车中的订单
        Map<String, CartItem> cartItemMap = cart.getMap();

        //判断此时会话中的购物车订单，是否已经有了当前加入的商品
        if (cartItemMap.containsKey(pid)){
            Integer oldNum = cartItemMap.get(pid).getBuyNum();
            buyNum += oldNum;
            newSubTotal = buyNum * product.getShop_price();
        }

        //封装CartItem购物车订单
        CartItem cartItem = new CartItem(product,buyNum,newSubTotal);

        //封装到购物车中
        cartItemMap.put(pid,cartItem);

        //将订单添加之购物车中
        cart.setMap(cartItemMap);

        //将总金额，添加到购物车中
        double total = cart.getTotal() + subTotal;
        cart.setTotal(total);

        //再将最新的购物车信息添加到会话中
        session.setAttribute("cart",cart);
        response.sendRedirect("cart.jsp");

    }

    //删除购物车单个订单
    public void delCart(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String pid = request.getParameter("pid");

        //从会话中获得购物车
        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");

        //获得购物车中的订单
        Map<String, CartItem> cartItemMap = cart.getMap();

        //重新计算总金额
        double total = cart.getTotal() - cartItemMap.get(pid).getSubTotal();

        //将要删除的订单删除
        cartItemMap.remove(pid);

        //改为最新的总金额
        cart.setTotal(total);

        //将购物车再次传入会话中
        session.setAttribute("cart",cart);

        response.sendRedirect("cart.jsp");
    }

    //清空购物车多个订单
    public void delSomeCart(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String str = request.getParameter("str");
        String[] pids = str.split(",");

        HttpSession session = request.getSession();
        Cart cart = (Cart)session.getAttribute("cart");

        //获得购物车中的订单
        Map<String, CartItem> cartItemMap = cart.getMap();

        double total = cart.getTotal();
        for (String pid : pids) {
            //重新计算总金额
            total = cart.getTotal() - cartItemMap.get(pid).getSubTotal();
            //将要删除的订单删除
            cartItemMap.remove(pid);
        }

        //如果全部删除完，购物车为空
        if (total==0){
            //移除会话中的购物车信息
            session.removeAttribute("cart");
        }else{
            //改为最新的总金额
            cart.setTotal(total);
            //将购物车再次传入会话中
            session.setAttribute("cart",cart);
        }

        response.sendRedirect("cart.jsp");
    }
}
