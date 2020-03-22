package service;

import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.test.SpringJunitTest;
import com.liuer.graduationdesign.service.system.GoodsService;
import org.junit.Test;

import javax.annotation.Resource;

public class GoodsServiceTest extends SpringJunitTest {
    @Resource
    private GoodsService goodsService;
    @Test
    public void updateGoodsTest(){
        Goods goods=goodsService.getGoods(16);

        System.out.println( goods.getGoodsName());

        goods.setGoodsName("今晚老坛");
        goods.setGoodstype(new GoodsType(5));
        goodsService.updateGoods(goods);
    }
    @Test
    public void  editgoodsTest(){
       Goods goods= goodsService.getGoods(1);
       System.out.println(goods.getGoodsName());
        System.out.println(goods.getGoodstype().getId());

    }
}
