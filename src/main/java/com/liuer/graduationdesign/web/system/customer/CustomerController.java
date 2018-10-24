package com.liuer.graduationdesign.web.system.customer;

import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.model.exception.MyFormException;

import com.liuer.graduationdesign.service.system.CustomerServicer;
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

/**
 * Created by Administrator on 2018/10/13.
 */
@Controller
@RequestMapping(value = "/system/customer")
public class CustomerController {
    @Resource
    private CustomerServicer customerServicer;
    /**
     * 跳转到添加页面
     */
    @RequestMapping(value = "/add")
    public String add(){
        return "system/customer/add.jsp";
    }
    /**
     * 跳转到首页页面
     */
    @RequestMapping(value = "/toAddAdmin")
    public String toAddAdmin(){
        return "system/index.jsp";
    }
    /**
     * 添加账户
     * @param customer
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doAddCustomer")
    public Map<String, Object> doAddCustomer(Customer customer){
        Map<String, Object> map=new HashMap<String, Object>();
        try {
            customerServicer.addCustomer(customer);
            map.put("status", 1);
            map.put("myMessage", "账户添加成功");
        } catch (MyFormException e) {
            map.put("status", -1);
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
    /*
    * 查询所有用户
    */
    @RequestMapping(value = "/toManageCustomer")
    public String toManageCustomer(HttpServletRequest request, HttpSession session){
        session.setAttribute("customer",customerServicer.getCustomer());
        return "system/customer/mages.jsp";
    }
    /**
     * 查询指定账户
     * @param id
     * @return
     */
    @RequestMapping(value="/edit/{id}")
    public @ResponseBody Object edit(ModelMap map, @PathVariable Integer id) {
        Customer customer=new Customer();
        customer=customerServicer.getCustomer(id);
        map.put("customer", customer);
        return customer;
    }
    /**
     * 根据ID修改相应的信息
     * @param customer
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doUpdateCustomer")
    public Map<String, Object> doUpdateCustomer(Customer customer){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("status", -1);//默认失败
        try {
            if(customerServicer.updateCustomer(customer)){
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
     * 删除指定账户
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/doDeleteCustomer")
    public Map<String, Object> doDeleteAdmin(Integer id,HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=new Customer();
        if(customer.getId()!=null){
            map.put("status", -1);
            map.put("myMessage", "删除失败：网络超时");
        }else{
            customerServicer.deleteCustomer(id);
            map.put("status", 1);
        }
        return map;
    }
}
