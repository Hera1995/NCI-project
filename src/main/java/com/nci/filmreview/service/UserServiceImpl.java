package com.nci.filmreview.service;

import com.nci.filmreview.dao.UserDao;
import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.ObjectUtils;

import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public void register(User user) {
        //1.check if the email address exists in database
        //2.if it exists, throw error
        //3.if it is not existed, register

        User userDB = userDao.findByEmail(user.getEmail());
        if (!ObjectUtils.isEmpty(userDB)) throw new RuntimeException("The email already exists!");//error

        //encrypt passwords
        String passwordSecret = DigestUtils.md5DigestAsHex(user.getPassword().getBytes(StandardCharsets.UTF_8));
        user.setPassword(passwordSecret);
        user.setType(false);

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

    @Override
    public List<Review> list(String imdbId) {
        return userDao.list(imdbId);
    }

    //find user by Id
    @Override
    public User findUser(int id) {
        return userDao.findById(id);
    }

    //add review
    @Override
    public void addReview(Review review){
        //when the comment is empty or default
        if (review.getContent() == null || review.getContent().isEmpty()
                || review.getContent().equals("\\s*Comment here:")  || review.getContent().equals("\\s*Comment here: + \\s"))
            throw new RuntimeException("Your message is empty!");

        //set current date
        //obtain current date
        LocalDate localDate = LocalDate.now();

        //exchange to LocalDateTime
        LocalDateTime localDateTime = localDate.atStartOfDay();

        //exchange to java.util.Date
        //choose the time zone to be london
        ZoneId londonZone = ZoneId.of("Europe/London");
        Date date = Date.from(localDateTime.atZone(londonZone).toInstant());
        review.setDate(date);

        //obtain imdbId


        //obtain userId

        //if usrId is empty
        //if (review.getUserId() == null ) throw new RuntimeException("Please log in to submit a review");

        //add review to db
        userDao.addReview(review);
    }
}
