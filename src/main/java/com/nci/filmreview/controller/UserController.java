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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger log = LoggerFactory.getLogger(UserController.class);

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
            model.addAttribute("user", user);
            session.setAttribute("user", user);

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

    @RequestMapping("/addReview")
    public String addReview(@ModelAttribute Review review){
        log.debug("Review content: {}", review.getContent());
        log.debug("Review userId : {}", review.getUserId());

        try {
            userService.addReview(review);
        } catch (RuntimeException e) {
            log.debug(e.getMessage());
            return "redirect:/login?msg=" + e.getMessage();
            //return "redirect:/detail?msg=" + e.getMessage();
        }

        return "redirect:/detail";
    }



}
