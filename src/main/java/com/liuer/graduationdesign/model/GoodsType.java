package com.liuer.graduationdesign.model;

/**
 * Created by Administrator on 2018/10/14 0014.
 */
public class GoodsType {
    private Integer id;
    private String name;
    private String info;
//
    public GoodsType(){

    }
    public GoodsType(Integer id){
        this.id=id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
