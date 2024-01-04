package com.nci.filmreview.controller;

import com.nci.filmreview.entity.User;
import com.nci.filmreview.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

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
    @PostMapping("/login")
    public String login(@ModelAttribute User user, HttpSession session) {
        log.debug("email:{},password:{}", user.getEmail(), user.getPassword());
        //1.find the account by email
        try {
            //log in
            user = userService.login(user.getEmail(), user.getPassword());
            //store user login getMessage()tokens
            session.setAttribute("user", user);
        } catch (Exception e) {
            log.error(e.getMessage());
            return "redirect:/login.html";
        }

        return "redirect:/index.html";
    }

    /**
     * user register
     *
     * @return
     */
    @PostMapping("/register")
    public String register(@ModelAttribute User user) {
        log.debug("email:{}, first name:{}, last name:{}, password:{}",
                user.getEmail(), user.getfName(), user.getlName(), user.getPassword());
        try {
            userService.register(user);
        } catch (RuntimeException e) {
            log.debug(e.getMessage());
            return "redirect:/register.html";
        }

        return "redirect:/login.html";
    }


}