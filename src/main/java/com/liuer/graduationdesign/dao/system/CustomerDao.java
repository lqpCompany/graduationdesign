package com.liuer.graduationdesign.dao.system;

import com.liuer.graduationdesign.model.Customer;

import java.util.List;

/**
 * Created by Administrator on 2018/10/13.
 */
public interface CustomerDao {
    /**
     * 	将账户信息存入账户表中
     * @param customer 账户信息，注意表中的非空字段不能为空
     * @return 添加了几条记录信息
     */
    int add(Customer customer);
    /**
     * 获取数据库中相同账户名的数量，用于判断创建账户时的账户名是否重名
     * @param username
     * @return
     */
    int countCustomerByUsername(String username);
    /*查询所有管理员*/
    List<Customer> getAll();
    /**
     *  根据账户的标志符读取对应的账户信息
     * @param id 账户信息的id
     * @return 账户对象，如果是null表示读取失败
     */
    Customer get(int id);
    /**
     * 	编辑账户信息
     * @param customer 账户信息，注意表中的非空字段不能为空
     * @return 编辑了几条记录信息
     */
    int update(Customer customer);
    /**
     * 根据账户的标志符删除对应的账户信息
     * @param id 账户信息的id
     * @return  删除的记录数
     */
    int delete(int id);
}
