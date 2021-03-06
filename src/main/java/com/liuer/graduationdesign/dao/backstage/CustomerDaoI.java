package com.liuer.graduationdesign.dao.backstage;

import com.liuer.graduationdesign.model.Customer;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2018/9/25.
 */
public interface CustomerDaoI {
    /**
     * 处理数据库的登录方法
     * @param phone 账户名
     * @param password 密码
     * @return  null表示登录失败
     */
    Customer login(@Param(value = "phone") String phone, @Param(value = "password") String password);


    /**
     *  根据账户的标志符读取对应的账户信息
     * @param id 账户信息的id
     * @return 账户对象，如果是null表示读取失败
     */
    Customer get(int id);

    /**
     * 	将账户信息存入账户表中
     * @param customer 账户信息，注意表中的非空字段不能为空
     * @return 添加了几条记录信息
     */
    int add(Customer customer);

    /**
     * 	编辑账户信息
     * @param customer 账户信息，注意表中的非空字段不能为空
     * @return 编辑了几条记录信息
     */
    int update(Customer customer);

    /**
     * 获取数据库中相同账户名的数量，用于判断创建账户时的账户名是否重名
     * @param phone
     * @return
     */
    int countCustomerByPhone(String phone);
}
