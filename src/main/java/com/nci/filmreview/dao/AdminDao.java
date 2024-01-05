package com.nci.filmreview.dao;
import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;

import java.util.List;

public interface AdminDao {
    //list all users
    List<User> list();

}
