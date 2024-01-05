package com.nci.filmreview.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/index")
    public String index(Model model, HttpSession session){
        model.addAttribute("user", session.getAttribute("user"));

        return "index";
    }

}
