package entity;

import java.util.Date;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/30 21:55
 */
public class Orders {
    private String oid;
    private Date ordertime;
    private double total;
    private int state;
    private String address;
    private String name;
    private String telephone;
    private String uid;

    public Orders() {
    }

    public Orders(String oid, Date ordertime, double total, int state, String address, String name, String telephone, String uid) {
        this.oid = oid;
        this.ordertime = ordertime;
        this.total = total;
        this.state = state;
        this.address = address;
        this.name = name;
        this.telephone = telephone;
        this.uid = uid;
    }

    /**
     * 获取
     * @return oid
     */
    public String getOid() {
        return oid;
    }

    /**
     * 设置
     * @param oid
     */
    public void setOid(String oid) {
        this.oid = oid;
    }

    /**
     * 获取
     * @return ordertime
     */
    public Date getOrdertime() {
        return ordertime;
    }

    /**
     * 设置
     * @param ordertime
     */
    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    /**
     * 获取
     * @return total
     */
    public double getTotal() {
        return total;
    }

    /**
     * 设置
     * @param total
     */
    public void setTotal(double total) {
        this.total = total;
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

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
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
     * @return uid
     */
    public String getUid() {
        return uid;
    }

    /**
     * 设置
     * @param uid
     */
    public void setUid(String uid) {
        this.uid = uid;
    }

    public String toString() {
        return "orders{oid = " + oid + ", ordertime = " + ordertime + ", total = " + total + ", state = " + state + ", address = " + address + ", name = " + name + ", telephone = " + telephone + ", uid = " + uid + "}";
    }
}
