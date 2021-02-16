package com.w.shop.controller;

import com.w.shop.entity.Product;
import com.w.shop.service.CategoryService;
import com.w.shop.service.ProductService;
import com.w.shop.vo.PageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet",urlPatterns = "/product")
public class ProductServlet extends BaseServlet {
    private ProductService pService = new ProductService();
    private CategoryService cService = new CategoryService();

    //阳：展示首页
    public void index(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //热门商品
        List<Product> products = pService.viewHot();
        request.setAttribute("productHot",products);

        //猜你喜欢商品


        //跳转至首页
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }


    //查看商品列表，查看浏览足迹的信息
    public void viewProductListByCidPname(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //从请求参数中获取当前页
        String page = request.getParameter("pageNow");
        int pageNow = 1; //默认查询第一页
        if (page != null){
            pageNow = Integer.parseInt(page);
        }

        //从请求参数中获取查询条件
        String cid = request.getParameter("cid");
        if (cid != null && !"".equals(cid)){
            String cname = cService.viewCname(cid);
            request.setAttribute("cname",cname);
        }

        String pname = request.getParameter("pname");
        if (pname == null){
            pname = "";//默认查询所有商品信息
        }

        //查询所有的商品信息
        PageVo<Product> vo = pService.viewProductsByCidPname(cid, pname, pageNow);
        request.setAttribute("vo",vo);


        request.getRequestDispatcher("productwedding.jsp").forward(request,response);


    }

    //通过商品pid来查询商品详细信息
    public void viewProductByPid(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //获取pid
        String pid = request.getParameter("pid");
        Product product = pService.viewProductByPid(pid);
        request.setAttribute("product",product);

        //通过cid来获得商品类别名称
        String cid = request.getParameter("cid");
        String cname = cService.viewCname(cid);
        request.setAttribute("cname",cname);
        request.getRequestDispatcher("productdetail.jsp").forward(request,response);
    }
}
