package com.liuer.graduationdesign.service.system;

import com.liuer.graduationdesign.dao.system.GoodsTypeDao;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsTypeService {
    @Resource
    private GoodsTypeDao goodstypeDao;
    /**
     * 添加产品类型
     * 说明：类型不能为空
     * @param goodsType
     */
    public void addGoodstype(GoodsType goodsType) throws MyFormException {
        if(goodsType!=null){
            if(goodsType.getName().equals("")){
                throw new MyFormException("添加失败：类型不能为空");
            }
            if(goodstypeDao.countGoodsTypeByUsername(goodsType.getName())==0){
                goodstypeDao.addGoodsType(goodsType);
            }else{
                throw new MyFormException("添加失败：类型重名");
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
        }
    }
    /**
     * 查询所有
     */
    public List<GoodsType> getGoodsType(){
        return goodstypeDao.getAll();
    }
    /**
     * 根据id读取相应的信息
     * @param id
     * @return
     */
    public GoodsType getGoodsType(Integer id) {
        GoodsType goodsType=null;
        if(id!=null){
            goodsType=goodstypeDao.get(id);
        }
        return goodsType;
    }
    /**
     * 修改类型信息
     * @param goodsType
     */
    public boolean updateGoodsType(GoodsType goodsType) throws MyFormException {
        boolean status = false;// 默认编辑失败
        if(goodsType.getName().length()==0){
            throw new MyFormException("添加失败：类型不能为空");
        }
        int i = goodstypeDao.update(goodsType);// 更改了多少条记录
        // 编写代码，判断是否编辑成功
        if (i ==1) {
            status = true;
        }
        return status;
    }
    /**
     * 删除类型信息
     * @param id
     */
    public void deleteGoodsType(Integer id){
        goodstypeDao.delete(id);
    }
}
