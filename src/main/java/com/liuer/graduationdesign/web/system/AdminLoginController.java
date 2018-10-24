package com.liuer.graduationdesign.web.system;

import com.liuer.graduationdesign.model.Admin;
import com.liuer.graduationdesign.model.exception.MyFormException;
import com.liuer.graduationdesign.service.system.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/10/11.
 */
@Controller
@RequestMapping(value = "/system")
public class AdminLoginController {
    @Resource
    private AdminService adminService;

    /* 跳转到登录页*/
    @RequestMapping(value="/toLogin")
    public String login() {
        return "/system/login.jsp";
    }

    /*
	 * 管理员登录
	 */
    @ResponseBody
    @RequestMapping(value = "/login")
    public  Map<String,Object> login(String username, String password, HttpServletRequest request,HttpSession session){
        Map<String,Object> map=new HashMap<>();
            Admin admin=adminService.login(username, password);
            if (admin!=null){
                session.setAttribute("admin",admin);
                map.put("status", 1);
                map.put("myMessage", "登录成功！");
            }else {
                map.put("status", -1);
                map.put("myMessage", "账户名或密码错误！");
            }
        return map;
      /* Admin admin=adminService.login(username, password);
       if (admin!=null){
           //将admin存放到session中
           session.setAttribute("admin",admin);
           //页面重定向
           return "redirect:admin/toManageAdmin";
       }else{
           return "system/loginerror.jsp";
       }*/

    }
    /**
     * 注销
     * @return
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session){
        //注销账户，清除session中admin的内容
        session.removeAttribute("admin");
        return "system/login.jsp";
    }
}
