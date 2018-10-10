package com.liuer.graduationdesign.service;

import com.liuer.graduationdesign.dao.CustomerDao;
import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.model.exception.MyFormException;
import com.liuer.graduationdesign.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/9/30.
 */
@Service
public class CustomerService {
    @Resource
    private CustomerDao customerDao;
   /* 用户登录*/
    public boolean login(String phone, String password) {
        Customer customer= customerDao.login(phone,password);
        if (customer!=null){
            return true;
        }else{
            return false;
        }
    }
    /* 用户注册*/
    public boolean add(Customer customer) throws MyFormException{
        customerDao.add(customer);
        if(customer!=null){
            if(customer.getUsername().equals("")){
                throw new MyFormException("添加失败：用户名不能为空");
            }
            if(customer.getPhone().equals("")){
                throw new MyFormException("添加失败：电话号码不能为空");
            }
            if(customer.getPassword().equals("")){
                throw new MyFormException("添加失败：密码不能为空");
            }else{
                throw new MyFormException("添加失败：账户名重名");
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
        }
    }

}
