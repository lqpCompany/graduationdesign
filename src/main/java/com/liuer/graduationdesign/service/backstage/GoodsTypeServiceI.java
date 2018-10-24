package com.liuer.graduationdesign.service.backstage;


import com.liuer.graduationdesign.dao.backstage.GoodsTypeDaoI;
import com.liuer.graduationdesign.model.GoodsType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/10/17 0017.
 */
@Service
public class GoodsTypeServiceI {

    @Resource
    private GoodsTypeDaoI goodsTypeDaoI;

    public GoodsType getGoodsType(Integer id){
        return goodsTypeDaoI.get(id);
    }
}
