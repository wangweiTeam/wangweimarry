package service;

import dao.UseraddressDao;
import entity.Useraddress;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author wyk
 * @Date 2021/2/4 11:36
 */
public class UseraddressService {
    private UseraddressDao useraddressDao=new UseraddressDao();
    //韦：新添地址
    public boolean addAddress(Useraddress useraddress){
        try {
            int i = useraddressDao.insertAddress(useraddress);
            if(i>0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    //查询所有的收货地址
    public List<Useraddress> viewAll(String name){
        try {
            List<Useraddress> useraddresses = useraddressDao.selectAll(name);
            if(useraddresses!=null){
                return useraddresses;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
