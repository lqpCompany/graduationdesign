package com.liuer.graduationdesign.web.backstage;


import com.liuer.graduationdesign.service.backstage.GoodsTypeServiceI;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/10/24 0024.
 */
@Controller
public class GoodsTypeControllerI {

    @Resource
    private GoodsTypeServiceI goodsTypeServiceI;
}
