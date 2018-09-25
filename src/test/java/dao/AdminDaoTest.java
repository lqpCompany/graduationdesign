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

}
