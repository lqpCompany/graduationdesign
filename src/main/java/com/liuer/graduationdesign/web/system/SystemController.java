package com.liuer.graduationdesign.web.system;

import com.liuer.graduationdesign.service.system.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/10/11.
 */
@Controller
@RequestMapping(value = "/")
public class SystemController {
    @Resource
    private AdminService adminService;
   /* 跳转到首页*/
    @RequestMapping(value = "/index")
    public String index(){
        return "system/index.jsp";
    }

}
