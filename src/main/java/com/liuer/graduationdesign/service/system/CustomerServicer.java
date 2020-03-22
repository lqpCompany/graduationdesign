package com.liuer.graduationdesign.service.system;

import com.liuer.graduationdesign.dao.system.CustomerDao;
import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/10/13.
 */
@Service
public class CustomerServicer {
    @Resource
    private CustomerDao customerDaoi;
    /**
     * 添加管理员
     * 说明：账户名和密码不能为s空
     * @param customer
     */
    public void addCustomer(Customer customer) throws MyFormException {
        if(customer!=null){
            if(customer.getUsername().equals("")) {
                throw new MyFormException("添加失败：账户名不能为空");
            }else if(customer.getPassword().equals("")){
                throw new MyFormException("添加失败：密码不能为空");
            }
            if(customerDaoi.countCustomerByUsername(customer.getUsername())==0){
                customerDaoi.add(customer);
            }else{
                throw new MyFormException("添加失败：账户名重名");
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
        }
    }
    /**
     * 查询所有管理员
     */
    public List<Customer> getCustomer(){
        return customerDaoi.getAll();

    }
    /**
     * 根据id读取相应的信息
     * @param id
     * @return
     */
    public Customer getCustomer(Integer id) {
        Customer customer=null;
        if(id!=null){
            customer=customerDaoi.get(id);
        }
        return customer;
    }
    /**
     * 修改用户信息
     * @param customer
     */
    public boolean updateCustomer(Customer customer) throws MyFormException {
        boolean status = false;// 默认编辑失败
        if(customer.getUsername().length()==0){
            throw new MyFormException("添加失败：姓名不能为空");
        }
        int i = customerDaoi.update(customer);// 更改了多少条记录
        // 编写代码，判断是否编辑成功
        if (i ==1) {
            status = true;
        }
        return status;
    }
    /**
     * 删除用户信息
     * @param id
     */
    public void deleteCustomer(Integer id){
        customerDaoi.delete(id);
    }
}
