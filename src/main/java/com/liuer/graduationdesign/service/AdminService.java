package com.liuer.graduationdesign.service;


import com.liuer.graduationdesign.dao.AdminDao;
import com.liuer.graduationdesign.model.Admin;
import org.junit.Test;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminService {
    @Resource
    private AdminDao adminDao;
    /*根据用户名和密码登录
    * @return admin不等于空，表示为登录成功
    * */
    public boolean login(String username,String password){
        Admin admin=adminDao.login(username, password);
        if(admin!=null){
           return true;
        }else{
            return false;
        }
    }
    /*
    根据id删除用户信息
    *
    * */
    public void delete(Integer id){
        adminDao.delete(id);
    }
   /*
    * 根据Admin读取用户信息
    *@param admin 账户信息，注意表中的非空字段不能为空
	@return 添加了几条记录信息
    * */
   public void add(Admin admin){
        admin=new Admin();
       admin.setUsername("li2");
       admin.setName("hao1");
       admin.setPassword("123");
       adminDao.add(admin);
   }
    /*
         * 根据id查找用户信息
         *@return  null表示不存在该用户信息
         * */
    @Test
    public void getTese(int id){

    }

}
