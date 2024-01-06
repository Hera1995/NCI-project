package com.nci.filmreview.dao;

import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao {
    //Find user based on email;
    User findByEmail(String email);

    //user register
    void save(User user);

    //list all reviews
    List<Review> list(String imdbId);
}
