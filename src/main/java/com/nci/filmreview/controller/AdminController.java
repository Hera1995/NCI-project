package com.nci.filmreview.controller;

import com.nci.filmreview.entity.User;
import com.nci.filmreview.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private AdminService adminService;

    @Autowired
    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping("listUser")
    public String ListUsers(Model model) {
        //get list
        List<User> users = adminService.list();

        model.addAttribute("users", users);
        return "detail";
    }

    @RequestMapping("addUser")
    public String addUser(User user) {

        return "";
    }
}
