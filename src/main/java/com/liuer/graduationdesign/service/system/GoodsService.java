package com.liuer.graduationdesign.service.system;

import com.liuer.graduationdesign.dao.system.GoodsDao;
import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.Page;
import com.liuer.graduationdesign.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsService {
    @Resource
    private GoodsDao goodsDao;
    /**
     * 添加产品类型
     * 说明：类型不能为空
     * @param goods
     */
    public void addGoods(Goods goods) throws MyFormException {
        if(goods!=null){
            if(goods.getGoodsName().equals("")){
                throw new MyFormException("添加失败：商品名称不能为空");
            }
            if(goodsDao.countGoodsByUsername(goods.getGoodsName())==0){
                goodsDao.addGoods(goods);
            }else{
                throw new MyFormException("添加失败：商品重名");
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
        }
    }

    public List<Goods> getAll(Page page){
        return goodsDao.readGoods(page);
    }
    /**
     * 删除产品信息
     * @param id
     */
    public void deleteGoods(Integer id){
        goodsDao.delete(id);
    }

    public Goods getGoods(Integer id){
        Goods goods=null;
        if(id!=null){
            goods=goodsDao.get(id);
        }
        return goods;
    }
    /**
     * 修改产品信息
     * @param goods
     */
    public boolean updateGoods(Goods goods) throws MyFormException {
        boolean status = false;// 默认编辑失败
        if(goods.getGoodsName().length()==0){
            throw new MyFormException("添加失败：名称不能为空");
        }
        int i = goodsDao.update(goods);// 更改了多少条记录
        // 编写代码，判断是否编辑成功
        if (i ==1) {
            status = true;
        }
        return status;
    }
}
