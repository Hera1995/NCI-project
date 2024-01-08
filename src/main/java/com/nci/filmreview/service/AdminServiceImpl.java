package com.nci.filmreview.service;

import com.nci.filmreview.dao.AdminDao;
import com.nci.filmreview.entity.User;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminDao adminDao;

    @Override
    public List<User> list() {
        return this.adminDao.list();
    }

    @Override
    public User findUserById(Integer id){

        return adminDao.findUserById(id);
    }

    //update user type
    @Override
    public void updateUserType(User user){

        Boolean currentType = user.getType(); // get current type
        user.setType(!currentType); // change current type

        //update user type to db
        adminDao.updateUserType(user);
    }

    //delete user
    public void deleteUserById(Integer id){
        adminDao.deleteUserById(id);
    }
}


