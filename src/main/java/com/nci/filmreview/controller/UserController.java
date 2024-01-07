package com.nci.filmreview.controller;

import com.nci.filmreview.entity.Review;
import com.nci.filmreview.entity.User;
import com.nci.filmreview.service.UserService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {
    private static final Logger log = LoggerFactory.getLogger(UserController.class);

    public static final String USER_KEY = "user";

    @Resource
    private UserService userService;


    /**
     * user login
     *
     * @return
     */
    @PostMapping("/login")          //HttpSession session
    public String login(@ModelAttribute User user, Model model, HttpSession session) {
        log.debug("email:{},password:{}", user.getEmail(), user.getPassword());
        //1.find the account by email
        try {
            //log in
            user = userService.login(user.getEmail(), user.getPassword());

            //store user info
            model.addAttribute(USER_KEY, user);
            session.setAttribute(USER_KEY, user);

            //store user login getMessage()tokens
            //session.setAttribute("user", user);
        } catch (Exception e) {
            log.error(e.getMessage());
            return "redirect:/login.jsp?msg=" + e.getMessage();


        }

        return "redirect:/index";
    }

    /**
     * user register
     *
     * @return
     */

//    @RequestMapping("/register")
    @PostMapping("/register")
    public String register(@ModelAttribute User user) {
        log.debug("email:{}, first name:{}, last name:{}, password:{}",
                user.getEmail(), user.getFirstName(), user.getLastName(), user.getPassword());
        try {
            userService.register(user);
        } catch (RuntimeException e) {
            log.debug(e.getMessage());
            return "redirect:/register?msg=" + e.getMessage();
        }

        return "redirect:/loginPage";
    }

    @ResponseBody
    @PostMapping("/addReview")
    public Response<Review> addReview(@RequestBody Review review, HttpSession session) {
        User user = (User) session.getAttribute(USER_KEY);
        if (user == null) {
            return Response.error("Please log in to submit a review");
        }

        review.setUserId(user.getId());
        userService.addReview(review);

        return Response.ok(review);
    }

    //delete review based on id
    @GetMapping("/deleteReview")
    public String deleteReview(@RequestParam Integer id) {
        log.debug("deleted id: {}", id);
        userService.deleteReview(id);
        return "redirect:/detail";
    }


}
