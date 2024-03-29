package com.nci.filmreview.controller;

import com.nci.filmreview.entity.Review;
import com.nci.filmreview.service.UserService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import static com.nci.filmreview.controller.UserController.USER_KEY;

@Controller
public class PageController {

    @Resource
    private UserService userService;

    @GetMapping("/index")
    public String index(Model model, HttpSession session) {
        model.addAttribute("user", session.getAttribute("user"));

        return "index";
    }

    @GetMapping("/loginPage")
    public String loginPage() {
        return "login";
    }

    @GetMapping("/registerPage")
    public String registerPage() {
        return "register";
    }

    @GetMapping("/detail")
    public String movieDetail(@RequestParam String movieId, @RequestParam String title, @RequestParam String time, @RequestParam String imgUrl, Model model, HttpSession session) {

        //add reviews to model
        List<Review> reviews = userService.list(movieId);
        model.addAttribute("reviews", reviews);

        //add users to model
        model.addAttribute(USER_KEY, session.getAttribute(USER_KEY));

        //add movie info to model
        model.addAttribute("movieId", movieId);
        model.addAttribute("title", title);
        model.addAttribute("time", time);
        model.addAttribute("imgUrl", imgUrl);


        return "detail";
    }

}
