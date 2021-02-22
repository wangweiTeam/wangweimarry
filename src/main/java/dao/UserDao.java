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
     *  韦：插入用户信息
     * @param users
     * @return
     */
    public int insert(Users users) throws SQLException {
      String sql="insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int update = this.update(sql, null, users.getUsername(), users.getPassword(), users.getHeadImgPath(), users.getName(), users.getSex(), users.getBirthday(), users.getShipAddr(), users.getEmail(),
                users.getTelephone(), users.getBankCardID(), 0,users.getCode());
        return update;
    }
    //韦：通过用户名查询信息
    public Long selectOne(String username) throws SQLException {
        String sql = "select count(*) from users where username = ?";
        Long value = (Long)this.getSingleValue(sql, username);
        return value;
    }
    //韦:更新状态
    public int updateState(String code) throws SQLException {
        String sql = "update users set state = ? where code = ?";
        int i = this.update(sql, 1, code);
        return i;
    }
    //阳：通过姓名和密码查询用户信息
    public Users selectOne(String username,String password) throws SQLException {
        String sql = "select * from users where username = ? and password = ?";
        return this.getBean(sql, Users.class, username, password);
    }
    //韦：完善新用户的的信息
    public int updateInformation(Users users) throws SQLException {
        String sql="update users set headImgPath=? and name=? and sex=? and birthday=? and bankCardID=? where username=?";
        int update = this.update(sql, users.getHeadImgPath(), users.getName(), users.getSex(), users.getBirthday(), users.getBankCardID(), users.getUsername());
        return update;
    }
    //通过用户名查询用户id
    public Long selectIdByUsername(String username) throws SQLException {
        String sql="select id where username=?";
        Long singleValue =(Long) this.getSingleValue(sql, username);
        return singleValue;
    }
}
