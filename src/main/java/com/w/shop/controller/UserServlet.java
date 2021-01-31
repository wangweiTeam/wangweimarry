package com.w.shop.controller;

import com.w.shop.entity.Users;
import com.w.shop.service.UserService;
import com.w.shop.utils.MD5Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/31 14:12
 */
@WebServlet(name = "UserServlet",urlPatterns = "/user")
public class UserServlet extends BaseServlet {
    private UserService servic = new UserService();

    //阳：用户登录
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("login_username");
        String password = request.getParameter("login_password");
        //通过MD5对密码进行处理
        password = MD5Utils.md5(password);

        Users user = servic.login(username, password);
        if (user!=null){
            //判断是否激活
            if (user.getState()==1){
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                //跳转至首页
                request.getRequestDispatcher(request.getContextPath()+"/product?method=index").forward(request,response);
            }
            request.setAttribute("msg","当前账户未激活，请尽快前往您的邮箱激活!");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        request.setAttribute("msg","用户名和密码不匹配！");
        request.getRequestDispatcher("login.jsp").forward(request,response);

    }
}
