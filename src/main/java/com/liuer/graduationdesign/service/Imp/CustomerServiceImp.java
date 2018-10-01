package com.liuer.graduationdesign.service.Imp;

import com.liuer.graduationdesign.dao.CustomerDao;
import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/9/30.
 */
@Service
public class CustomerServiceImp implements CustomerService {
    @Resource
    private CustomerDao customerDao;
   /* 用户登录*/
    @Override
    public boolean login(String username, String password) {
        Customer customer= customerDao.login(username,password);
        if (customer!=null){
            return true;
        }else{
            return false;
        }
    }
    /* 用户注册*/
    @Override
    public boolean add(Customer customer){
        customerDao.add(customer);
        if (customer!=null){
            return true;
        }else{
            return false;
        }
    }

}
