package dao;

import com.liuer.graduationdesign.dao.system.GoodsDao;
import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class GoodsDaoITest extends SpringJunitTest {
    @Resource
    private GoodsDao goodsDao;

    @Test
    public void getAllTest(){
        List<Goods> goods1=goodsDao.readGoods();
        for (Goods goods: goods1){
            System.out.println(goods.getGoodstype().getName());
        }
    }
}
