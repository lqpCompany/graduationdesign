package com.liuer.graduationdesign.service.Imp;

import com.liuer.graduationdesign.dao.AdminDao;
import com.liuer.graduationdesign.model.Admin;
import com.liuer.graduationdesign.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/9/30.
 */
@Service
public class AdminSerivceImp implements AdminService{
    @Resource
    private AdminDao adminDao;
   /* 用户登录*/
    @Override
    public boolean login(String username, String password) {
        Admin admin=adminDao.login(username,password);
        if (admin!=null){
            return true;
        }else{
            return false;
        }
    }
    /* 用户注册*/
    @Override
    public boolean add(Admin admin){
        adminDao.add(admin);
        if (admin!=null){
            return true;
        }else{
            return false;
        }
    }

}
