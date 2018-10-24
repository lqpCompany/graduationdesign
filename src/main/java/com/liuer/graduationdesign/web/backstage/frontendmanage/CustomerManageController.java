package com.liuer.graduationdesign.web.backstage.frontendmanage;
import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.model.exception.MyFormException;

import com.liuer.graduationdesign.service.backstage.CustomerServiceI;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/backstage/frontendmanage")
public class CustomerManageController {

    @Resource
    private CustomerServiceI customerServiceI;

    @RequestMapping(value = "/toAddCustomer")
    public String toAddCustomer(){
        return "backstage/forget.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/doAddCustomer")
    public Map<String, Object> doAddCustomer(Customer customer){
        Map<String, Object> map=new HashMap<String, Object>();
        try {
            customerServiceI.addCustomer(customer);
            map.put("status", 1);
            map.put("myMessage", "账户添加成功");
        } catch (MyFormException e) {
            map.put("status", -1);
            map.put("myMessage", e.getMessage());
        }
        return map;
    }
}
