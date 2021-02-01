package com.w.shop.dao;

import com.w.shop.entity.Product;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/31 23:40
 */
public class ProductDao extends BaseDao<Product> {

    //阳：热门商品查询
    public List<Product> selectAllByIsHot() throws SQLException {
        String sql = "select * from product where is_hot=1 limit 0,?;";
        return this.getBeanList(sql,Product.class,9);
    }

    //阳：猜你喜欢查询

}
