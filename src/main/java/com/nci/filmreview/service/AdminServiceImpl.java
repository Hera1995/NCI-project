package com.nci.filmreview.service;

import com.nci.filmreview.dao.AdminDao;
import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    private AdminDao adminDao;

    @Autowired
    public AdminServiceImpl(AdminDao adminDao) {
        this.adminDao = adminDao;
    }

    @Override
    public List<User> list(){
        return this.adminDao.list();
    }
}


