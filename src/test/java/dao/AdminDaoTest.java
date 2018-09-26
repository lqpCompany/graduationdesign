package dao;

import com.liuer.graduationdesign.dao.AdminDao;
import com.liuer.graduationdesign.model.Admin;
import com.liuer.graduationdesign.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/9/25.
 */
public class AdminDaoTest extends SpringJunitTest{
        @Resource
        private AdminDao adminDao;
        @Test
        public void loginTest(){
                Admin admin=adminDao.login("user","123456");
                System.out.println(admin.getName());
        }
        /*
        * 根据id删除用户信息
        *@return返回0表示不存在该用户信息
        * */
        @Test
        public  void deltelTest(){
                System.out.println(adminDao.delete(2));
        }
         /*
        * 根据id查找用户信息
        *@return  null表示不存在该用户信息
        * */
         @Test
        public void getTese(){
                 Admin admin=adminDao.get(3);//数据库不存在返回null
                 System.out.println(admin);
                 admin=adminDao.get(1);//数据库存在返回该用户信息
                 System.out.println(admin);
         }
         /*
        * 根据amdin添加用户信息
        *@return
        * */
         @Test
        public void addTest(){
                Admin admin=new Admin();
                admin.setUsername("li1");
                admin.setName("hao1");
                admin.setPassword("123");
                adminDao.add(admin);
                System.out.println(admin);
        }
}
