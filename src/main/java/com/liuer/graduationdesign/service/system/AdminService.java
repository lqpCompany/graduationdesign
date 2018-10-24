package com.liuer.graduationdesign.service.system;

import com.liuer.graduationdesign.dao.system.AdminDao;
import com.liuer.graduationdesign.model.Admin;
import com.liuer.graduationdesign.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/10/11.
 */
@Service
public class AdminService {
    @Resource
    private AdminDao adminDao;
    /*管理员登录*/
    public Admin login(String username,String password){
        return adminDao.login(username,password);
    }
    /*查询所有管理员*/
    public List<Admin> getAdmins(){
        return adminDao.getAll();
    }
    /**
     * 根据id读取指定标识符
     * @param id
     * @return
     */
    public Admin getAdmin(Integer id) {
        Admin admin=null;
        if(id!=null){
            admin=adminDao.get(id);
        }
        return admin;
    }

    /**
     * 添加管理员
     * 说明：账户名和密码不能为s空
     * @param admin
     */
    public void addAdmin(Admin admin) throws MyFormException {
        if(admin!=null){
            if(admin.getUsername().equals("")){
                throw new MyFormException("添加失败：账户名不能为空");
            }
            if(admin.getName().equals("")){
                throw new MyFormException("添加失败：姓名不能为空");
            }
            if(adminDao.countAdminByUsername(admin.getUsername())==0){
                adminDao.add(admin);
            }else{
                throw new MyFormException("添加失败：账户名重名");
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
        }
    }
    /**
     * 删除管理员
     * @param id
     */
    public void deleteAdmin(Integer id){
        adminDao.delete(id);
    }
    /**
     * 修改管理员
     * @param admin
     */
    public boolean updateAdmin(Admin admin) throws MyFormException {
        boolean status = false;// 默认编辑失败
        if(admin.getName().length()==0){
            throw new MyFormException("添加失败：姓名不能为空");
        }
        int i = adminDao.update(admin);// 更改了多少条记录
        // 编写代码，判断是否编辑成功
        if (i ==1) {
            status = true;
        }
        return status;
    }

}
