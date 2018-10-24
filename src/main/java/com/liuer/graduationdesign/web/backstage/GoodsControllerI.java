package com.liuer.graduationdesign.web.backstage;

import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.service.backstage.GoodsServiceI;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2018/10/16 0016.
 */
@Controller
@RequestMapping(value = "/backstage")
public class GoodsControllerI {

    @Resource
    private GoodsServiceI goodsServiceI;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(HttpServletRequest request){
        List<Goods> goods= goodsServiceI.getGoods();
        request.setAttribute("goods",goods);
        return "backstage/list.jsp";
    }

}
