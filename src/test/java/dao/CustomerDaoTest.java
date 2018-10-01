package dao;

import com.liuer.graduationdesign.dao.CustomerDao;
import com.liuer.graduationdesign.model.Customer;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/9/25.
 */
public class CustomerDaoTest extends SpringJunitTest{
        @Resource
        private CustomerDao customerDao;
        @Test
        public void loginTest(){
                Customer admin= customerDao.login("user","123456");
                System.out.println(admin.getName());
        }
        /*
        * 根据id删除用户信息
        *@return返回0表示不存在该用户信息
        * */
        @Test
        public  void deltelTest(){
                System.out.println(customerDao.delete(3));
        }
         /*
        * 根据id查找用户信息
        *@return  null表示不存在该用户信息
        * */
         @Test
        public void getTese(){
                 Customer admin= customerDao.get(3);//数据库不存在返回null
                 System.out.println(admin);
                 admin= customerDao.get(1);//数据库存在返回该用户信息
                 System.out.println(admin);
         }
         /*
        * 根据amdin添加用户信息
        *@return
        * */
         @Test
        public void addTest(){
                Customer admin=new Customer();
                admin.setUsername("li2");
                admin.setName("hao1");
                admin.setPassword("123");
                customerDao.add(admin);
                System.out.println(admin);
        }
}
