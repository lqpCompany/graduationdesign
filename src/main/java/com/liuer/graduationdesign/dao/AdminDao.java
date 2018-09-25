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
}
