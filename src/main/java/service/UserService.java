package service;

import dao.UserDao;
import entity.Users;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author wyk
 * @Date 2021/1/31 16:13
 */
public class UserService {
    private UserDao userDao=new UserDao();
    public boolean regist(Users users){
        try {
            int insert = userDao.insert(users);
            if(insert>0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }
    //校验昵称是否存在
    public boolean validate(String username){
        try {
            Long one = userDao.selectOne(username);
            //若为true则存在 ， 若为false则不存在
            return one > 0 ?true:false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
