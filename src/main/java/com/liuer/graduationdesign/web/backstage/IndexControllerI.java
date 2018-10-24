package com.liuer.graduationdesign.web.backstage;

import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.model.Goods;
import com.liuer.graduationdesign.model.exception.MyFormException;

import com.liuer.graduationdesign.service.backstage.CustomerServiceI;
import com.liuer.graduationdesign.service.backstage.GoodsServiceI;
import org.springframework.stereotype.Controller;
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

@Controller
@RequestMapping(value = "/backstage")
public class IndexControllerI {

	@Resource
	private CustomerServiceI customerServiceI;
	@Resource
	private GoodsServiceI goodsServiceI;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		//获取最新的8条产品集合
		List<Goods> goods = goodsServiceI.getNewTopGoods();
		request.setAttribute("goods", goods);
		return "backstage/index.jsp";
	}

	@RequestMapping(value = "/details/{id}")
	public String details(ModelMap map, @PathVariable int id) {
		map.put("goods", goodsServiceI.get(id));
		return "backstage/details.jsp";
	}

	/*
     * 跳转到登录页面
     * @ResponseBody表示用ajax方法
     */
	@RequestMapping(value = "/toLogin")
	public String toLogin() {
		return "backstage/login.jsp";
	}

	@ResponseBody
	@RequestMapping(value = "/login")
	public Map<String, Object> login(String phone, String password, HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		Customer customer = customerServiceI.login(phone, password);
		if (customer != null) {
			session.setAttribute("customer", customer);
			map.put("status", 1);
			map.put("myMessage", "登录成功");
		} else {
			map.put("status", -1);
			map.put("myMessage", "账户名或密码错误");
		}
		return map;
	}

	/**
	 * 用户中心
	 * @return
	 */
	@RequestMapping(value = "/about")
	public String about(){
		return "backstage/about.jsp";
	}


	/**
	 * 跳转到账户编辑页面
	 */
	@RequestMapping(value = "/toUpdateCustomer")
	public String toUpdateCustomer(Integer id, HttpServletRequest request,HttpSession session){
		Customer customer=(Customer) session.getAttribute("customer");
		if (customer==null){
			return "backstage/login.jsp";
		}else {
			request.setAttribute("customer", customerServiceI.getCustomer(id));
			return "backstage/profile.jsp";
		}
	}
	@ResponseBody
	@RequestMapping(value = "/doUpdateCustomer")
	public Map<String, Object> doUpdateCustomer(Customer customer){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("status", -1);//默认失败
		try {
			if(customerServiceI.updateCustomer(customer)){
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
	 * 注销
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session){
		session.removeAttribute("customer");
		return "backstage/login.jsp";
	}
}
