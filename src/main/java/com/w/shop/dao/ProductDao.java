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


    /**
     * 查询符合条件的所有商品列表总记录数
     * 条件一：商品类别的编号
     * 条件二：商品名称
     */
    public int selectCountByCidPname(String cid,String pname) throws SQLException {
        Long counts = 0L;
        //直接进行表单条件搜索
        if (cid ==null || "".equals(cid)){
            String sql = "select count(*) from product where pname like concat('%',?,'%');";
            counts = (Long)this.getSingleValue(sql,pname);
        }else if (cid != null && !"".equals(cid)){
            //点击商品类别+表单搜索
            String sql = "select count(*) from product where cid=? and pname like concat('%',?,'%');";
            counts = (Long)this.getSingleValue(sql,cid,pname);
        }
        return counts.intValue();
    }

    /**
     * 查询符合条件的所有商品列表
     * 条件一：商品类别的编号
     * 条件二：商品名称
     */
    public List<Product> selectProductsByCidPname(String cid,String pname,int begin) throws SQLException {
        List<Product> productList = null;
        //直接进行表单条件搜索
        if (cid ==null || "".equals(cid)){
            String sql = "select * from product where pname like concat('%',?,'%') limit ?,?;";
            productList = this.getBeanList(sql,Product.class,pname,begin,6);
        }else if (cid != null && !"".equals(cid)){
            //点击商品类别+表单搜索
            String sql = "select * from product where cid=? and pname like concat('%',?,'%') limit ?,?;";
            productList = this.getBeanList(sql,Product.class,cid,pname,begin,6);
        }
        return productList;
    }

    public Product selectProductByPid(String pid) throws SQLException {
        String sql = "select * from product where pid = ?;";
        return this.getBean(sql,Product.class,pid);
    }
}
