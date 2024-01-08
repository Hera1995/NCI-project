package com.nci.filmreview.dao;

import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDao {
    //list all users
    List<User> list();

    //find user by id
    User findUserById(Integer id);

    //update user type
    void updateUserType(User user);

    //delete user
    void deleteUserById(Integer id);
}
