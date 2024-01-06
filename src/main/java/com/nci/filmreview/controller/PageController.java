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

@Controller
public class PageController {

    @Resource
    private UserService userService;

    @GetMapping("/index")
    public String index(Model model, HttpSession session) {
        model.addAttribute("user", session.getAttribute("user"));

        return "index";
    }

    @GetMapping("/detail")
    public String movieDetail(@RequestParam String movieId, @RequestParam String title, @RequestParam String time, @RequestParam String imgUrl, Model model) {
        List<Review> reviews = userService.list(movieId);
        model.addAttribute("reviews", reviews);

        model.addAttribute("movieId", movieId);
        model.addAttribute("title", title);
        model.addAttribute("time", time);
        model.addAttribute("imgUrl", imgUrl);

        return "detail";
    }

    @GetMapping("/loginPage")
    public String loginPage() {
        return "login";
    }

    @GetMapping("/registerPage")
    public String registerPage() {
        return "register";
    }


}
