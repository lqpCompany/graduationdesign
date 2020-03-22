package dao;

import com.liuer.graduationdesign.dao.system.GoodsDao;
import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.Page;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class GoodsDaoITest extends SpringJunitTest {
    @Resource
    private GoodsDao goodsDao;

  /*  @Test
    public void getAllTest(){
        List<Goods> goods1=goodsDao.readGoods(page);
        for (Goods goods: goods1){
            System.out.println(goods.getGoodstype().getName());
        }
    }*/
  @Test
    public void update(){
      Goods goods=goodsDao.get(16);
      System.out.println(goods.getGoodsName());
      goods.setGoodsName("红烧牛肉");
      goods.setGoodsDescripttion("abcd");
      goods.setGoodstype(new GoodsType(8));
      goodsDao.update(goods);
  }
}
