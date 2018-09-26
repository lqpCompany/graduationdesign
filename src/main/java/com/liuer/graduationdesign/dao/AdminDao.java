package com.liuer.graduationdesign.dao;

import com.liuer.graduationdesign.model.Admin;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2018/9/25.
 */
public interface AdminDao {
    /*
 * 处理数据库的登录方法
 * @return null表示登录失败
 */
    Admin login(@Param(value = "username") String username, @Param(value = "password") String password);

    /*
    * 根据id删除用户信息
    * */
    int delete(int id);

    /*
    * 根据id读取用户信息
    *
    * */
    Admin get(int id);
     /*
    * 根据Admin读取用户信息
    *
    * */
     int add(Admin admin);
}
