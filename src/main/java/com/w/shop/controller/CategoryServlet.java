package com.w.shop.controller;

import com.google.gson.Gson;
import com.w.shop.entity.Category;
import com.w.shop.service.CategoryService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet",urlPatterns = "/category")
public class CategoryServlet extends BaseServlet {
    private CategoryService service = new CategoryService();

    //获取商品分类
    public void viewAllCategory(HttpServletRequest request,HttpServletResponse response) throws IOException {
        List<Category> categories = service.viewAllCategory();
        Gson gson = new Gson();
        String json = gson.toJson(categories);
        response.getWriter().write(json);
    }
}
