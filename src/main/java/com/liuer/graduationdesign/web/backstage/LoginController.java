package com.liuer.graduationdesign.web.backstage;



import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/backstage")
public class LoginController {

	@Autowired
	private CustomerService customerService;


	/*
	 * 跳转到登录页面
	 * @ResponseBody表示用ajax方法
	 */
	@ResponseBody
	@RequestMapping(value = "/login")
	public Map<String,Integer> login(String phone, String password,HttpSession session){
		//创建一个map集合
		Map<String,Integer> map=new HashMap<>();
		Customer customer=new Customer();
		if(customerService.login(phone, password)){
			session.setAttribute("customer",customer);
			//如果返回的数据为1，则表示成功
			map.put("status",1);
		}else{
			//如果返回的数据为-1，则表示失败
			map.put("status",-1);
		}
		return map;
	}
	/*用户注册*/
	@ResponseBody
	@RequestMapping(value = "/add")
	public Map<String,Integer> add(Customer customer){
		Map<String,Integer> map =new HashMap<>();
		if (customerService.add(customer)){
			//如果返回的数据为1，则表示成功
			map.put("status",1);
		}else {
			//如果返回的数据为-1，则表示失败
			map.put("status",-1);
		}
		return map;
	}

}
