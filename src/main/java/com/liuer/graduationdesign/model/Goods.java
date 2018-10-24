package com.liuer.graduationdesign.model;

/**
 * Created by Administrator on 2018/10/14 0014.
 */
public class Goods {
    private Integer 	id;//	关键字
    private String 	goodsName;	//varchar(20)	类型名称
    private String 	goodsImage;	//Varchar(20)	图片
    private float	goodsPrice;	//float	产品价格
    private GoodsType	goodstype;  	//GoodsType  	产品类型	表的关联  多对一的关系
    private String	goodsDescripttion;	//varchar(20)	产品描述
    /*private int 	saleNum;*/	//int	销售数量
    private float	rebate;	///float	折扣


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsImage() {
        return goodsImage;
    }

    public void setGoodsImage(String goodsImage) {
        this.goodsImage = goodsImage;
    }

    public float getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(float goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public GoodsType getGoodstype() {
        return goodstype;
    }

    public void setGoodstype(GoodsType goodstype) {
        this.goodstype = goodstype;
    }

    public String getGoodsDescripttion() {
        return goodsDescripttion;
    }

    public void setGoodsDescripttion(String goodsDescripttion) {
        this.goodsDescripttion = goodsDescripttion;
    }



    public float getRebate() {
        return rebate;
    }

    public void setRebate(float rebate) {
        this.rebate = rebate;
    }
}
