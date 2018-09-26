package com.liuer.graduationdesign.web.backstage;



import com.liuer.graduationdesign.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/backstage")
public class LoginController {

	@Resource
	private AdminService adminService;


	/*
	 * 跳转到登录页面
	 */
	@ResponseBody
	@RequestMapping(value = "/login")
	public Map<String,Integer> login(String username, String password){
		Map<String,Integer> map=new HashMap<>();
		if(adminService.login(username, password)){
		map.put("status",1);
		}else{
			map.put("status",-1);
		}
		return map;
	}

}
