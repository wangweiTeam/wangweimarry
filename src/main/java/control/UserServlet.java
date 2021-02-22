package control;



import entity.Users;
import service.UserService;
import utils.CommonUtils;
import utils.MD5Utils;
import utils.MailUtils;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@WebServlet(name = "UserServlet" ,urlPatterns = "/user")
public class UserServlet extends BaseServlet {
    private UserService userService=new UserService();

        public void regist(final HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
         //获取页面来的信息(手动获取设置)
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            password= MD5Utils.md5(password);
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            //封装对象
            Users users=new Users(username,password,email,phone);
            //给user对象设置激活码code
            String code = CommonUtils.getUUID().replaceAll("-","");
            users.setCode(code);

            //执行用户注册
            boolean flag = userService.regist(users);
            if(flag){
                //注册成功，发一份邮件
                //邮件的主体内容
                String emailMsg = "恭喜您注册成功，这是一封激活邮件，请点击<a href='http://localhost:8089/user?method=active&code="+code+"'>"+code+"</a>激活";
                try {
                    MailUtils.sendMail(users.getEmail(),"注册邮件激活",emailMsg);
                } catch (MessagingException e) {
                    e.printStackTrace();
                }

                request.getRequestDispatcher("registSuccess.jsp").forward(request,response);
            }else{
                //注册失败
                request.setAttribute("mesg","注册失败，重新注册");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }

        }
    //韦：用户昵称校验
    public void validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        boolean flag = userService.validate(username);

        //封装成json数据格式响应至客户端   json串：{"flag":flag}
        String str = "{\"flag\":"+flag+"}";
        response.getWriter().write(str);
    }
    //韦：用户激活
    public void active(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        boolean flag = userService.active(code);
        if(flag){
            //激活成功
            response.sendRedirect("index.jsp");
        }else{
            //激活失败
            response.sendRedirect("error.jsp");
        }
    }
    //阳：用户登录
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("login_username");
        String password = request.getParameter("login_password");
        //通过MD5对密码进行处理
        password = MD5Utils.md5(password);

        Users user = userService.login(username, password);
        if (user!=null){
            //判断是否激活
            if (user.getState()==1){
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                //跳转至首页
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }else {
                request.setAttribute("msg","当前账户未激活，请尽快前往您的邮箱激活!");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }

        }else {
            request.setAttribute("msg","用户名和密码不匹配！");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }

    //阳：退出登录
    public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //直接销毁session
        session.invalidate();
        request.getRequestDispatcher(request.getContextPath()+"/product?method=index").forward(request,response);
    }
    //韦：完善信息
    public void addInformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = request.getParameter("name");
        String radio10 = request.getParameter("radio10");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String days = request.getParameter("days");
        String acountID = request.getParameter("acountID");
        //获取会话中user
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");
        //设置值
        user.setName(name);
        user.setSex(radio10);
        user.setBankCardID(acountID);
        //处理生日
        String bir=year+"-"+month+"-"+days;
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date birthday = simpleDateFormat.parse(bir);
            if(birthday!=null){
               user.setBirthday(birthday);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //获取请求图片参数
        Part part = request.getPart("file");
        if(part!=null){
            String oldName = part.getHeader("content-disposition");
            if(oldName!=null && oldName.lastIndexOf(".")>0){
                //上传
                String newName = UUID.randomUUID() +
                        oldName.substring(oldName.lastIndexOf("."),oldName.length()-1);
                //给user对象传递图片信息
                user.setHeadImgPath("/pic/"+newName);
                //本地图片服务器传递图片信息
                part.write("E:\\5.JSP+Servlet\\temp\\"+newName);
            }else{
                //未上传
                JOptionPane.showMessageDialog(null,"图片上传失败");
                user.setHeadImgPath("/pic/"+oldName);

            }
        }
        boolean b = userService.updateInform(user);
        if(b){
            //修改成功，重新设置会话user,并响应重定向到个人中心
            session.setAttribute("user",user);
            response.sendRedirect("personalcenter.jsp");
        }else {
            //修改失败.请求转发给个人质料，重新写数据
            request.setAttribute("mesg","修改失败,请重新填写个人信息");
            request.getRequestDispatcher("personalinformation.jsp").forward(request,response);
        }


    }
}
