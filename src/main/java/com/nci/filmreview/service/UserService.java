package com.nci.filmreview.service;

import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;

import java.util.List;

public interface UserService {

    //user register
    void register(User user);

    //user login
    User login(String email, String password);

    //list reviews
    List<Review> list(String imdbId);

    //find the user
    User findUser(int id);

    //add review
    void addReview(Review review);

    //delete review based on id
    void deleteReview(Integer id);

    //update review
    void updateReview(Review review);
}
