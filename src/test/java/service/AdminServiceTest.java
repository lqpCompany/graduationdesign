package service;


import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.service.CustomerService;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

public class AdminServiceTest extends SpringJunitTest{
    @Resource
    private CustomerService adminService;
    /*
    * 如果输出结果为ture表示数据库存在该用户，false则为不存在该用户
    * */
/*    @Test
    public void loginTest(){
        System.out.println(adminService.login("user","123456"));
        System.out.println(adminService.login("username","123456"));
    }
    @Test
    public  void deleteTest(){
        adminService.delete(2);
    }*/
    @Test
    public void addTest(){
        Customer customer=new Customer();
        customer.setUsername("li2");
        customer.setPassword("133");
        customer.setUsername("li1");
        adminService.add(customer);
        System.out.println(customer);
    }
}
