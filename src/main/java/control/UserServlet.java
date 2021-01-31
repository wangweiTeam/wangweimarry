package control;



import entity.Users;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet" ,urlPatterns = "/user")
public class UserServlet extends BaseServlet {
    private UserService userService=new UserService();

        public void regist(final HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
         //获取页面来的信息(手动获取设置)
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            //封装对象
            Users users=new Users();

        }
    //用户昵称校验
    public void validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        boolean flag = userService.validate(username);

        //封装成json数据格式响应至客户端   json串：{"flag":flag}
        String str = "{\"flag\":"+flag+"}";
        response.getWriter().write(str);
    }
}
