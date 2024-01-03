package com.nci.filmreview.service;

import com.nci.filmreview.dao.UserDao;
import com.nci.filmreview.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;
import org.springframework.util.ObjectUtils;

import java.nio.charset.StandardCharsets;

@Service
@Transactional
public class UserServiceImpl implements UserService{

    private UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void register(User user){
        //1.check if the email address exists in database
        //2.if it exists, throw error
        //3.if it is not existed, register

        User userDB = userDao.findByEmail(user.getEmail());
        if(!ObjectUtils.isEmpty(userDB)) throw new RuntimeException("The email already exists!");//error

        //encrypt passwords
        String passwordSecret = DigestUtils.md5DigestAsHex(user.getPassword().getBytes(StandardCharsets.UTF_8));
        user.setPassword(passwordSecret);
        //register
        userDao.save(user);


    }
}
