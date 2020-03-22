package com.liuer.graduationdesign.web.system.goods;

import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.Page;
import com.liuer.graduationdesign.model.exception.MyFormException;
import com.liuer.graduationdesign.service.system.GoodsService;
import com.liuer.graduationdesign.service.system.GoodsTypeService;
import com.liuer.graduationdesign.service.system.PageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    @Resource
    private PageService pageService;
    /**
     * 跳转到添加产品页面
     */
    @RequestMapping(value = "/add")
    public String add(){
        return "system/goods/add.jsp";
    }
    @RequestMapping(value = "/mages")
    public String mages(){
        return "system/goods/mages.jsp";
    }

    /*
    * 查询所有商品
    */
    @RequestMapping(value = "/MagesGoods")
    public String toManageGoodsType(ModelMap map,HttpServletRequest request,Page page){
        //查询出所有类型
        List<GoodsType> goodstype=new ArrayList<>();
        goodstype=goodsTypeService.getGoodsType();
        map.put("goodstype",goodstype);
        //查询出goods表的数据
        List<Goods> goods=new ArrayList<>();
        page.setTableName("goods");
        //调用pageService的afferentPage（）方法
        goods=goodsService.getAll(pageService.afferentPage(page));
        map.put("list",goods);
        map.put("page",pageService.outPage(page));
        return "system/proudy/mages.jsp";
    }
    /*
    * 查询所有类型
    */
    @RequestMapping(value = "/AddGoodsType")
    public String ManageGoods(HttpSession session){
        //把所有的类型查询出来存入session
        session.setAttribute("goodstype",goodsTypeService.getGoodsType());
        return "system/proudy/add.jsp";
    }
    /**
     * 使用ajax添加产品
     * @param goods
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doAddGoods")
    public Map<String, Object> doAddGoods(Goods goods) throws Exception{
        Map<String, Object> map=new HashMap<String, Object>();
        try {
            //如果添加成功，map集合就返回1,如果添加失败就返回-1
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
        //查询要删除的商品ID，如果id为空则删除失败
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
                map.put("myMessage", "商品编辑成功");
            }else{
                map.put("myMessage", "商品编辑失败");
            }
        } catch (MyFormException e) {
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
}
