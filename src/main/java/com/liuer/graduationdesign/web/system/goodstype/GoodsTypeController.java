package com.liuer.graduationdesign.web.system.goodstype;

import com.liuer.graduationdesign.model.GoodsType;
import com.liuer.graduationdesign.model.exception.MyFormException;
import com.liuer.graduationdesign.service.system.GoodsTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/system/goodstype")
public class GoodsTypeController {
    @Resource
    private GoodsTypeService goodsTypeService;

    /**
     * 跳转到添加类型页面
     */
    @RequestMapping(value = "/add")
    public String add(){
        return "system/goodstype/add.jsp";
    }
    /**
     * 添加产品类型
     * @param goodsType
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doAddGoodsType")
    public Map<String, Object> doAddGoodsType(GoodsType goodsType){
        Map<String, Object> map=new HashMap<String, Object>();
        try {
            goodsTypeService.addGoodstype(goodsType);
            map.put("status", 1);
            map.put("myMessage", "添加类型成功");
        } catch (MyFormException e) {
            map.put("status", -1);
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
    /*
    * 查询所有管理员
    */
    @RequestMapping(value = "/toManageGoodsType")
    public String toManageCustomer(HttpServletRequest request, HttpSession session){
        session.setAttribute("goodstype",goodsTypeService.getGoodsType());
        return "system/goodstype/mages.jsp";
    }
    /**
     * 查询指定账户
     * @param id
     * @return
     */
    @RequestMapping(value="/edit/{id}")
    public @ResponseBody Object edit(ModelMap map, @PathVariable Integer id) {
        GoodsType goodsType=new GoodsType();
        goodsType=goodsTypeService.getGoodsType(id);
        map.put("goodstype", goodsType);
        return goodsType;
    }
    /**
     * 根据ID修改相应的信息
     * @param goodsType
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doUpdateGoodsType")
    public Map<String, Object> doUpdateGoodsType(GoodsType goodsType){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("status", -1);//默认失败
        try {
            if(goodsTypeService.updateGoodsType(goodsType)){
                map.put("status", 1);
                map.put("myMessage", "类型编辑成功");
            }else{
                map.put("myMessage", "类型编辑失败");
            }
        } catch (MyFormException e) {
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
    /**
     * 删除指定类型
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doDeleteGoodsType")
    public Map<String, Object> doDeleteAdmin(Integer id,HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        GoodsType goodsType=new GoodsType();
        if(goodsType.getId()!=null){
            map.put("status", -1);
            map.put("myMessage", "删除失败：网络超时");
        }else{
            goodsTypeService.deleteGoodsType(id);
            map.put("status", 1);
        }
        return map;
    }

}
