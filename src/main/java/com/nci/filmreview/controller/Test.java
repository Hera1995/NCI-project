package com.nci.filmreview.controller;

import com.nci.filmreview.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Test {
    @GetMapping("/hello")
    public String test(Model model){
        User user = null;
        model.addAttribute("name", "hera");
        model.addAttribute("user", user);
        return "index-1";
    }
}
