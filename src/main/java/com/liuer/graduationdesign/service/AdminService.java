package com.liuer.graduationdesign.service;


import com.liuer.graduationdesign.dao.AdminDao;
import com.liuer.graduationdesign.model.Admin;
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


}
