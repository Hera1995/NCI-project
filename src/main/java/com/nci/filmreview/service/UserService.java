package com.nci.filmreview.service;

import com.nci.filmreview.entity.User;

public interface UserService {

    //user register
    void register(User user);

    //user login
    User login(String email, String password);
}
