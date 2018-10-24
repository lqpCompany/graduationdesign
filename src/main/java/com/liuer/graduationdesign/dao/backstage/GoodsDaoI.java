package com.liuer.graduationdesign.dao.backstage;

import com.liuer.graduationdesign.model.Goods;

import java.util.List;

/**
 * Created by Administrator on 2018/10/15 0015.
 */
public interface GoodsDaoI {

    List<Goods> readNewTop();

    List<Goods> readAll();

    Goods get(int id);
}
