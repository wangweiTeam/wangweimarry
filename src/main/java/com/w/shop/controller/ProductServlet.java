package com.w.shop.controller;

import com.w.shop.entity.Product;
import com.w.shop.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet",urlPatterns = "/product")
public class ProductServlet extends BaseServlet {
    private ProductService pService = new ProductService();

    //阳：展示首页
    public void index(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //热门商品
        List<Product> products = pService.viewHot();
        request.setAttribute("productHot",products);

        //猜你喜欢商品


        //跳转至首页
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }
}
