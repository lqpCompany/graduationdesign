package com.liuer.graduationdesign.service;

import com.liuer.graduationdesign.model.Admin;

/**
 * Created by Administrator on 2018/9/30.
 */
public interface AdminService {
    /*用户登录*/
    boolean login(String username,String password);
    /*添加用户信息*/
    boolean add(Admin admin);
}
