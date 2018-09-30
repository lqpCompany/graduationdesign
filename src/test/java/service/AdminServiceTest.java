package service;


import com.liuer.graduationdesign.model.Admin;
import com.liuer.graduationdesign.service.AdminService;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

public class AdminServiceTest extends SpringJunitTest{
    @Resource
    private AdminService adminService;
    /*
    * 如果输出结果为ture表示数据库存在该用户，false则为不存在该用户
    * */
/*    @Test
    public void loginTest(){
        System.out.println(adminService.login("user","123456"));
        System.out.println(adminService.login("username","123456"));
    }
    @Test
    public  void deltelTest(){
        adminService.delete(2);
    }*/
    @Test
    public void addTest(){
        Admin admin=new Admin();
        admin.setName("li2");
        admin.setPassword("133");
        admin.setUsername("li1");
        adminService.add(admin);
        System.out.println(admin);
    }
}
