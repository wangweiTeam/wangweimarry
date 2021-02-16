package com.w.shop.service;

import com.w.shop.dao.ProductDao;
import com.w.shop.entity.Product;
import com.w.shop.vo.PageVo;
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


    //查询商品列表
    public PageVo<Product> viewProductsByCidPname(String cid, String pname, Integer  pageNow){
        PageVo<Product> vo = null;
        try {
            //得到总记录数
            int counts = dao.selectCountByCidPname(cid,pname);

            //计算总页数
            int myPages = (int)(counts%6==0? counts/6:Math.ceil(counts/6.0));

            //计算分页起始值
            int begin = (pageNow-1)*6;

            //查询数据
            List<Product> productList = dao.selectProductsByCidPname(cid, pname, begin);

            //封装PageVo
            vo = new PageVo<>(cid,pname,pageNow,myPages,productList);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vo;
    }

    //通过商品pid来查询商品信息
    public Product viewProductByPid(String pid){
        try {
            return dao.selectProductByPid(pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
