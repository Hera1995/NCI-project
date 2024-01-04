package com.nci.filmreview.dao;

import com.nci.filmreview.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    //Find user based on email;
    User findByEmail(String email);

    //user register
    void save(User user);
}
