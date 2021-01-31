package com.w.shop.dao;

import com.w.shop.entity.Users;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/31 14:00
 */
public class UserDao extends BaseDao<Users> {

    //阳：通过姓名和密码查询用户信息
    public Users selectOne(String username,String password) throws SQLException {
        String sql = "select * from users where username = ? and password = ?";
        return this.getBean(sql, Users.class, username, password);
    }
}
