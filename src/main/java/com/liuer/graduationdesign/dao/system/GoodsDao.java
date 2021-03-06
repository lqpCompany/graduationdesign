package com.liuer.graduationdesign.dao.system;

import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.Page;

import java.util.List;

public interface GoodsDao {
    /**
     * 	将账户信息存入账户表中
     * @param goods 产品类型信息，注意表中的非空字段不能为空
     * @return 添加了几条记录信息
     */
    int addGoods(Goods goods);
    /*查询所有商品类型*/
    List<GoodsType> getAll();
    /**
     * 获取数据库中相同账户名的数量，用于判断创建类型时是否重名
     * @param goodsName
     * @return
     */
    int countGoodsByUsername(String goodsName);

   List<Goods> readGoods(Page page);
    /**
     * 根据类型的标志符删除对应产品
     * @param id 账户信息的id
     * @return  删除的记录数
     */
    int delete(int id);
    /**
     *  根据类型的标志符读取对应的类型
     * @param id 账户类型的id
     * @return 账户对象，如果是null表示读取失败
     */
    Goods get(int id);
    /**
     * 	编辑产品
     * @param goods 产品，注意表中的非空字段不能为空
     * @return 编辑了几条记录信息
     */
    int update(Goods goods);
}
