package com.liuer.graduationdesign.dao;

import com.liuer.graduationdesign.model.Customer;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2018/9/25.
 */
public interface CustomerDao {
    /*
 * 处理数据库的登录方法
 * @return null表示登录失败
 */
    Customer login(@Param(value = "username") String username, @Param(value = "password") String password);

    /*
     根据账户的标志符删除对应的账户信息
     @param id 账户信息的id
     @return 删除的记录数
      */
    int delete(int id);

    /*
    * 根据id读取用户信息
    *@param id账户信息的id
    * */
    Customer get(int id);
     /*
    * 根据Admin读取用户信息
    *@param admin 账户信息，注意表中的非空字段不能为空
	@return 添加了几条记录信息
    * */
     int add(Customer admin);
}
