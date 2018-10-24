package service;

import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.service.system.CustomerServicer;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

public class CustomerServiceTest extends SpringJunitTest {
    @Resource
    private CustomerServicer customerServicer;
    @Test
    public  void  eidt(){
       Customer customer= customerServicer.getCustomer(15);
        System.out.println(customer.getUsername());
    }
}
