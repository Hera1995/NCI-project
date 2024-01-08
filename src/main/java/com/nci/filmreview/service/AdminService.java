package com.nci.filmreview.service;

import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;

import java.util.List;

public interface AdminService {
    //user list
    List<User> list();

    //search user by id
    User findUserById(Integer id);

    //update user type by id
    void updateUserType(User user);

    //delete user by id
    void deleteUserById(Integer id);
}
