package com.nci.filmreview.service;

import com.nci.filmreview.dao.AdminDao;
import com.nci.filmreview.entity.User;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminDao adminDao;

    @Override
    public List<User> list() {
        return this.adminDao.list();
    }
}


