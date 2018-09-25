package com.liuer.graduationdesign.web.backstage;



import com.liuer.graduationdesign.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/backstage")
public class LoginController {

	@Resource
	private AdminService adminService;


	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/login")
	public String login(String username,String password){
		if(adminService.login(username, password)){
			return "/backstage/loginsuccess.jsp";
		}else{
			return "/backstage/loginerror.jsp";
		}

	}

}
