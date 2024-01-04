package com.nci.filmreview.service;

import com.nci.filmreview.dao.UserDao;
import com.nci.filmreview.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.ObjectUtils;

import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

   /* @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }*/

    @Override
    public void register(User user) {
        //1.check if the email address exists in database
        //2.if it exists, throw error
        //3.if it is not existed, register

        User userDB = userDao.findByEmail(user.getEmail());
        if (!ObjectUtils.isEmpty(userDB)) throw new RuntimeException("The email already exists!");//error

        //encrypt passwords
        String passwordSecret = DigestUtils.md5DigestAsHex(user.getPassword().getBytes(StandardCharsets.UTF_8));
        user.setType(false);
        user.setPassword(passwordSecret);
        //register
        userDao.save(user);

    }

    @Override
    public User login(String email, String password) {
        //1. find the email in db
        User user = userDao.findByEmail(email);

        //2. see if the email exists
        //not exist
        if (ObjectUtils.isEmpty(user)) throw new RuntimeException("Invalid email input!");

        //exist
        //3. see if the password is correct
        String digestPassword = DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8));
        if (!user.getPassword().equals(digestPassword)) throw new RuntimeException("Wrong password!");

        return user;
    }
}
