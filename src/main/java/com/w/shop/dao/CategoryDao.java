package com.w.shop.dao;

import com.w.shop.entity.Category;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/2/4 12:48
 */
public class CategoryDao extends BaseDao<Category> {

    //获取商品分类
    public List<Category> selectAllCategory() throws SQLException {
        return this.getBeanList("select * from category",Category.class);
    }

    //通过商品类别的编号查询商品类别的名称
    public String selectOneCategory(String cid) throws SQLException {
        return this.getSingleValue("select cname from category where cid = ?;",cid).toString();
    }
}
