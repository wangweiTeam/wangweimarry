package com.w.shop.service;

import com.w.shop.dao.CategoryDao;
import com.w.shop.entity.Category;

import java.sql.SQLException;
import java.util.List;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/2/4 12:50
 */
public class CategoryService {
    private CategoryDao dao = new CategoryDao();

    //获取商品分类
    public List<Category> viewAllCategory(){
        try {
            return dao.selectAllCategory();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //通过商品类别的编号查询商品类别的名称
    public String viewCname(String cid){
        try {
            return dao.selectOneCategory(cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
