package com.nci.filmreview.controller;

import com.nci.filmreview.entity.User;
import com.nci.filmreview.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("user")
public class UserController {

    private static final Logger log = LoggerFactory.getLogger(UserController.class);

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    //user register
    @RequestMapping("register")
    public String register(User user) {
        log.debug("email:{}, first name:{}, last name:{}, password:{}",
                user.getEmail(), user.getFname(), user.getLname(), user.getPassword());

        try {
            userService.register(user);
        } catch (RuntimeException e) {
            e.printStackTrace();
            return "redirect:/register.html?msg=" + e.getMessage();
        }

        return "redirect:/login.html";
    }


}
