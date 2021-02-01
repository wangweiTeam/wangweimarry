package com.w.shop.service;

import com.w.shop.dao.ProductDao;
import com.w.shop.entity.Product;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/31 23:52
 */
public class ProductService {
    private ProductDao dao = new ProductDao();

    //查询热门商品
    public List<Product> viewHot(){
        try {
            return dao.selectAllByIsHot();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //查询猜你喜欢
}
