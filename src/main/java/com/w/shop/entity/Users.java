package com.w.shop.entity;

import java.util.Date;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/30 22:03
 */
public class Users {
    private int id;
    private String username; //用户名
    private String password; //密码
    private String headImgPath;//头像
    private String name;//真实姓名
    private String sex;//性别  0时男  1时女的  2时保密
    private Date birthday;//出生日期
    private String shipAddr;//收货地址
    private String email;//邮箱
    private String telephone;//电话
    private String bankCardID;//银行卡号
    private int state;//激活状态


    public Users() {
    }

    public Users(int id, String username, String password, String headImgPath, String name, String sex, Date birthday, String shipAddr, String email, String telephone, String bankCardID, int state) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.headImgPath = headImgPath;
        this.name = name;
        this.sex = sex;
        this.birthday = birthday;
        this.shipAddr = shipAddr;
        this.email = email;
        this.telephone = telephone;
        this.bankCardID = bankCardID;
        this.state = state;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * 获取
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取
     * @return headImgPath
     */
    public String getHeadImgPath() {
        return headImgPath;
    }

    /**
     * 设置
     * @param headImgPath
     */
    public void setHeadImgPath(String headImgPath) {
        this.headImgPath = headImgPath;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取
     * @return birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * 设置
     * @param birthday
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * 获取
     * @return shipAddr
     */
    public String getShipAddr() {
        return shipAddr;
    }

    /**
     * 设置
     * @param shipAddr
     */
    public void setShipAddr(String shipAddr) {
        this.shipAddr = shipAddr;
    }

    /**
     * 获取
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取
     * @return telephone
     */
    public String getTelephone() {
        return telephone;
    }

    /**
     * 设置
     * @param telephone
     */
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    /**
     * 获取
     * @return bankCardID
     */
    public String getBankCardID() {
        return bankCardID;
    }

    /**
     * 设置
     * @param bankCardID
     */
    public void setBankCardID(String bankCardID) {
        this.bankCardID = bankCardID;
    }

    /**
     * 获取
     * @return state
     */
    public int getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(int state) {
        this.state = state;
    }

    public String toString() {
        return "Users{id = " + id + ", username = " + username + ", password = " + password + ", headImgPath = " + headImgPath + ", name = " + name + ", sex = " + sex + ", birthday = " + birthday + ", shipAddr = " + shipAddr + ", email = " + email + ", telephone = " + telephone + ", bankCardID = " + bankCardID + ", state = " + state + "}";
    }
}
