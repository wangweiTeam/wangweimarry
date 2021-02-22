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
    //韦：注册用户
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
    //韦：校验昵称是否存在
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
    //韦：激活
    public boolean active(String code){
        try {
            return userDao.updateState(code)>0 ? true :false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    //阳：用户登录
    public Users login(String username,String password){
        try {
            return userDao.selectOne(username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //韦：完善用户信息
    public boolean updateInform(Users users){
        try {
            int i = userDao.updateInformation(users);
            if(i>0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    //韦：通过用户名查询id
    public Long viewId(String username){
        try {
            Long aLong = userDao.selectIdByUsername(username);
            return aLong;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0l;
    }
}
