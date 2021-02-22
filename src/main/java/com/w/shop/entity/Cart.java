package com.w.shop.entity;

import java.util.HashMap;
import java.util.Map;

/**
 * @Description 购物车
 * @Author 王树阳
 * @Date 2021/2/21 13:38
 */
public class Cart {
    //一对多  关联购物车明细  key商品编号pid ， value商品明细CartItem
    private Map<String,CartItem> map = new HashMap<>();

    //总计
    private double total;


    public Cart() {
    }

    public Cart(Map<String, CartItem> map, double total) {
        this.map = map;
        this.total = total;
    }

    /**
     * 获取
     * @return map
     */
    public Map<String, CartItem> getMap() {
        return map;
    }

    /**
     * 设置
     * @param map
     */
    public void setMap(Map<String, CartItem> map) {
        this.map = map;
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

    public String toString() {
        return "Cart{map = " + map + ", total = " + total + "}";
    }
}
