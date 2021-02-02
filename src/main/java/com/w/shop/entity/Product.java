package com.w.shop.entity;

import java.util.Date;

/**
 * @Description TODO
 * @Author 王树阳
 * @Date 2021/1/30 21:58
 */
public class Product {
    private int pid;      //商品编号 （为String最好，这里纯粹为了合作原因）
    private String pname; //商品名称
    private double market_price; //参考价格
    private double shop_price;   //实际价格
    private String pimage;       //图片
    private Date pdate;          //上架日期
    private int is_hot;          //是否是热门商品
    private String pdesc;        //商品描述
    private int pflag;           //是否上下架 1上架 0下架
    private String cid;          //当前所属类别


    public Product() {
    }

    public Product(int pid, String pname, double market_price, double shop_price, String pimage, Date pdate, int is_hot, String pdesc, int pflag, String cid) {
        this.pid = pid;
        this.pname = pname;
        this.market_price = market_price;
        this.shop_price = shop_price;
        this.pimage = pimage;
        this.pdate = pdate;
        this.is_hot = is_hot;
        this.pdesc = pdesc;
        this.pflag = pflag;
        this.cid = cid;
    }

    /**
     * 获取
     * @return pid
     */
    public int getPid() {
        return pid;
    }

    /**
     * 设置
     * @param pid
     */
    public void setPid(int pid) {
        this.pid = pid;
    }

    /**
     * 获取
     * @return pname
     */
    public String getPname() {
        return pname;
    }

    /**
     * 设置
     * @param pname
     */
    public void setPname(String pname) {
        this.pname = pname;
    }

    /**
     * 获取
     * @return market_price
     */
    public double getMarket_price() {
        return market_price;
    }

    /**
     * 设置
     * @param market_price
     */
    public void setMarket_price(double market_price) {
        this.market_price = market_price;
    }

    /**
     * 获取
     * @return shop_price
     */
    public double getShop_price() {
        return shop_price;
    }

    /**
     * 设置
     * @param shop_price
     */
    public void setShop_price(double shop_price) {
        this.shop_price = shop_price;
    }

    /**
     * 获取
     * @return pimage
     */
    public String getPimage() {
        return pimage;
    }

    /**
     * 设置
     * @param pimage
     */
    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    /**
     * 获取
     * @return pdate
     */
    public Date getPdate() {
        return pdate;
    }

    /**
     * 设置
     * @param pdate
     */
    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    /**
     * 获取
     * @return is_hot
     */
    public int getIs_hot() {
        return is_hot;
    }

    /**
     * 设置
     * @param is_hot
     */
    public void setIs_hot(int is_hot) {
        this.is_hot = is_hot;
    }

    /**
     * 获取
     * @return pdesc
     */
    public String getPdesc() {
        return pdesc;
    }

    /**
     * 设置
     * @param pdesc
     */
    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    /**
     * 获取
     * @return pflag
     */
    public int getPflag() {
        return pflag;
    }

    /**
     * 设置
     * @param pflag
     */
    public void setPflag(int pflag) {
        this.pflag = pflag;
    }

    /**
     * 获取
     * @return cid
     */
    public String getCid() {
        return cid;
    }

    /**
     * 设置
     * @param cid
     */
    public void setCid(String cid) {
        this.cid = cid;
    }

    public String toString() {
        return "Product{pid = " + pid + ", pname = " + pname + ", market_price = " + market_price + ", shop_price = " + shop_price + ", pimage = " + pimage + ", pdate = " + pdate + ", is_hot = " + is_hot + ", pdesc = " + pdesc + ", pflag = " + pflag + ", cid = " + cid + "}";
    }
}
