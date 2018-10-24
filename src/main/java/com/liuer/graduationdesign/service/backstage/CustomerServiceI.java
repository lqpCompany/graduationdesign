package com.liuer.graduationdesign.service.backstage;


import com.liuer.graduationdesign.dao.backstage.CustomerDaoI;
import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by customeristrator on 2018/9/30.
 */
@Service
public class CustomerServiceI {
    @Resource
    private CustomerDaoI customerDaoI;
   /* 用户登录*/
    public Customer login(String phone, String password){
        return customerDaoI.login(phone, password);
    }
    /* 用户注册*/
    public void addCustomer(Customer customer) throws MyFormException {
        if (customer != null) {
            if (customer.getUsername().equals("")) {
                throw new MyFormException("添加失败：账户名不能为空");
            }
            if (customer.getPassword().equals("")) {
                throw new MyFormException("添加失败：密码不能为空");
            }
            if (customer.getPhone().equals("")) {
                throw new MyFormException("添加失败：电话不能为空");
            }
            if (customerDaoI.countCustomerByPhone(customer.getPhone())==0) {
                customerDaoI.add(customer);
            } else {
                throw new MyFormException("添加失败：电话名重名");
            }
        } else {
            throw new MyFormException("添加失败：表单数据不能为空");
        }
    }

    public Customer getCustomer(Integer id){
        Customer customer=null;
        if (id!=null){
            customer= customerDaoI.get(id);
            return customer;
        }else{
            return customer;
        }
    }

    public boolean updateCustomer(Customer customer) throws MyFormException {
        boolean status = false;// 默认编辑失败
        if(customer.getUsername().length()==0){
            throw new MyFormException("添加失败：姓名不能为空");
        }
        if(customer.getEmail().length()==0){
            throw new MyFormException("添加失败：email不能为空");
        }
        if(customer.getAddress().length()==0){
            throw new MyFormException("添加失败：地址不能为空");
        }
        int i = customerDaoI.update(customer);// 更改了多少条记录
        // 编写代码，判断是否编辑成功
        if (i ==1) {
            status = true;
        }
        return status;
    }
}
