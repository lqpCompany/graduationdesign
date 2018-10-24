package com.liuer.graduationdesign.web.system.goods;

import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.exception.MyFormException;
import com.liuer.graduationdesign.service.system.GoodsService;
import com.liuer.graduationdesign.service.system.GoodsTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.*;

@Controller
@RequestMapping(value = "/system/goods")
public class GoodsController {
    @Resource
    private GoodsService goodsService;
    @Resource
    private GoodsTypeService goodsTypeService;
    /**
     * 跳转到添加产品页面
     */
    @RequestMapping(value = "/add")
    public String add(){
        return "system/goods/add.jsp";
    }

    /*
    * 查询所有商品
    */
    @RequestMapping(value = "/MagesGoods")
    public String toManageGoodsType(ModelMap map,HttpServletRequest request){
        List<GoodsType> goodstype=new ArrayList<>();
       goodstype=goodsTypeService.getGoodsType();
        map.put("goodstype",goodstype);
        List<Goods> list=goodsService.getAll();
        request.setAttribute("list",list);
        return "system/proudy/mages.jsp";
    }
    /*
    * 查询所有类型
    */
    @RequestMapping(value = "/AddGoodsType")
    public String ManageGoods(HttpSession session){
        session.setAttribute("goodstype",goodsTypeService.getGoodsType());
        return "system/proudy/add.jsp";
    }
    /**
     * 添加产品
     * @param goods
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doAddGoods")
    public Map<String, Object> doAddGoods(Goods goods,MultipartFile goodsImage,HttpServletRequest request) throws Exception{
        Map<String, Object> map=new HashMap<String, Object>();
        try {
            goodsService.addGoods(goods);
            map.put("status", 1);
            map.put("myMessage", "添加产品成功");
        } catch (MyFormException e) {
            map.put("status", -1);
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
    /**
     * 删除指定商品信息
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doDeleteGoods")
    public Map<String, Object> doDeleteGoods(Integer id,HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        Goods goods=new Goods();
        if(goods.getId()!=null){
            map.put("status", -1);
            map.put("myMessage", "删除失败：网络超时");
        }else{
            goodsService.deleteGoods(id);
            map.put("status", 1);
        }
        return map;
    }
    /**
     * 查询指定账户
     * @param id
     * @return
     */
    @RequestMapping(value="/edit/{id}")
    public @ResponseBody Object edit(ModelMap map, @PathVariable Integer id) {
        Goods goods=new Goods();
        goods=goodsService.getGoods(id);
        map.put("goods", goods);
        return goods;
    }
    /**
     * 根据ID修改相应的信息
     * @param goods
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doUpdateGoods")
    public Map<String, Object> doUpdateGoods(Goods goods){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("status", -1);//默认失败
        try {
            if(goodsService.updateGoods(goods)){
                map.put("status", 1);
                map.put("myMessage", "账户编辑成功");
            }else{
                map.put("myMessage", "账户编辑失败");
            }
        } catch (MyFormException e) {
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
}
