package control;

import entity.Useraddress;
import entity.Users;
import service.UserService;
import service.UseraddressService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UseraddressServlet",urlPatterns = "/address")
public class UseraddressServlet extends BaseServlet{
    UseraddressService service=new UseraddressService();
    UserService userService=new UserService();
    public void addAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
     //获取请求参数
        String username = request.getParameter("username");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String detailaddress = request.getParameter("detailaddress");
        String detail=province+city+district+detailaddress;
        String phone = request.getParameter("phone");
        String gdphone = request.getParameter("gdphone");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        Users user = (Users)session.getAttribute("user");
        //封装对象
        Useraddress useraddress=new Useraddress(username,detail,phone,gdphone,email);
        ///设置pid
        Long aLong = userService.viewId(user.getUsername());
        int i = aLong.intValue();
        useraddress.setPid(i);
        if(user.getName()==null){
            JOptionPane.showMessageDialog(null,"请完善个人信息");
            request.getParameter("personalinformation.jsp");
        }else {
            useraddress.setName(user.getName());
            //插入数据库
            boolean b = service.addAddress(useraddress);
            if(b){
                //收获地址添加成功
                //查询真实姓名登入用户的所有地址

                List<Useraddress> useraddresses = service.viewAll(user.getName());
                //设置会话属性
                session.setAttribute("useraddresses",useraddresses);
                //响应重定向给收获地址
                response.sendRedirect("personaladd.jsp");

            }

        }


    }

}
