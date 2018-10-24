package com.liuer.graduationdesign.web.system.admin;

import com.liuer.graduationdesign.dao.system.AdminDao;
import com.liuer.graduationdesign.model.Admin;
import com.liuer.graduationdesign.model.exception.MyFormException;
import com.liuer.graduationdesign.service.system.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/10/11.
 */
@Controller
@RequestMapping(value = "/system/admin")
public class AdminMessageController {
    @Resource
    private AdminService adminService;

    /**
     * 跳转到添加页面
     */
    @RequestMapping(value = "/add")
    public String add(){
        return "system/admin/add.jsp";
    }
    /**
     * 跳转到首页页面
     */
    @RequestMapping(value = "/toAddAdmin")
    public String toAddAdmin(){
        return "system/index.jsp";
    }
    /**
     * 跳转到全部管理员页面
     */
    @RequestMapping(value = "/list")

    public String list(HttpSession session){
        session.setAttribute("list",adminService.getAdmins());
        return "system/admin/mages.jsp";
    }
    /*
	 * 查询所有管理员
	 */
    @RequestMapping(value = "/toManageAdmin")
    public String toManageAdmin(HttpServletRequest request, HttpSession session){
        session.setAttribute("list",adminService.getAdmins());
        return "system/index.jsp";
    }

    /**
     * 删除指定账户
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doDeleteAdmin")
    public Map<String, Object> doDeleteAdmin(Integer id,HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        Admin admin=(Admin)session.getAttribute("admin");
        if(admin.getId()==id.intValue()){//如果登录账户的id与被删除账户的id一致
            //不允许删除自己的账户
            map.put("status", -1);
            map.put("myMessage", "删除失败：不允许删除自己");
        }else{
            adminService.deleteAdmin(id);
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
    public @ResponseBody Object edit(ModelMap map,@PathVariable Integer id) {
        Admin admin=new Admin();
         admin=adminService.getAdmin(id);
        map.put("admin", admin);
        return admin;
    }
    /**
     * 根据ID修改相应的信息
     * @param admin
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doUpdateAdmin")
    public Map<String, Object> doUpdateAdmin(Admin admin){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("status", -1);//默认失败
        try {
            if(adminService.updateAdmin(admin)){
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

    /**
     * 添加账户
     * @param admin
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doAddAdmin")
    public Map<String, Object> doAddAdmin(Admin admin){
        Map<String, Object> map=new HashMap<String, Object>();
        try {
            adminService.addAdmin(admin);
            map.put("status", 1);
            map.put("myMessage", "账户添加成功");
        } catch (MyFormException e) {
            map.put("status", -1);
            map.put("myMessage", e.getMessage());
        }
        return map;
    }



}
