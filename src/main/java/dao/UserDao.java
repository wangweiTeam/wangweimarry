package dao;


import entity.Users;

import java.sql.SQLException;

/**
 * @Description TODO
 * @Author wyk
 * @Date 2021/1/31 16:00
 */
public class UserDao extends BaseDao<Users> {
    /**
     *  插入用户信息
     * @param users
     * @return
     */
    public int insert(Users users) throws SQLException {
      String sql="insert into users values(?,?,?,?,?,?,?,?,?,?,?,?)";
        int update = this.update(sql, null, users.getUsername(), users.getPassword(), users.getHeadImgPath(), users.getName(), users.getSex(), users.getBirthday(), users.getShipAddr(), users.getEmail(),
                users.getTelephone(), users.getBankCardID(), 0);
        return update;
    }
    //通过用户名查询信息
    public Long selectOne(String username) throws SQLException {
        String sql = "select count(*) from users where username = ?";
        Long value = (Long)this.getSingleValue(sql, username);
        return value;
    }
}
