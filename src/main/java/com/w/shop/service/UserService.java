package com.w.shop.service;

import com.w.shop.dao.UserDao;
import com.w.shop.entity.Users;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/31 14:06
 */
public class UserService {
    UserDao dao = new UserDao();

    //阳：用户登录
    public Users login(String username,String password){
        try {
            return dao.selectOne(username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
