package dao;

import entity.Useraddress;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description 韦燕坤
 * @Author wyk
 * @Date 2021/2/4 11:24
 */
public class UseraddressDao extends BaseDao<Useraddress>{
    //韦：增加收获地址
    public int insertAddress(Useraddress useraddress) throws SQLException {
        String sql="insert into useraddress values(?,?,?,?,?,?,?)";
        int update = this.update(sql, useraddress.getUsername(), useraddress.getDetail(), useraddress.getPhone(), useraddress.getGdPhone(), useraddress.getEmail(), useraddress.getPid(),useraddress.getName());
        return update;
    }
   //韦;查询所有收货地址
    public List<Useraddress> selectAll(String name) throws SQLException {
        String sql="select *from useraddress where name=?" ;
        List<Useraddress> beanList = this.getBeanList(sql, Useraddress.class,name);
        return beanList;
    }
}
