package com.liuer.graduationdesign.service.backstage;


import com.liuer.graduationdesign.dao.backstage.GoodsDaoI;
import com.liuer.graduationdesign.model.Goods;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/10/15 0015.
 */
@Service
public class GoodsServiceI {
    @Resource
    private GoodsDaoI goodsDaoI;

    public List<Goods> getNewTopGoods(){
        return goodsDaoI.readNewTop();
    }

    public List<Goods> getGoods(){
        return goodsDaoI.readAll();
    }

    public Goods get(Integer id){
        return goodsDaoI.get(id);
    }
}
