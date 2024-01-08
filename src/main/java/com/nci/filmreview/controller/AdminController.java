package com.nci.filmreview.controller;

import com.nci.filmreview.entity.User;
import com.nci.filmreview.service.AdminService;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;

import static com.nci.filmreview.controller.UserController.USER_KEY;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;

    @Autowired
    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }


    //get user list
    @GetMapping("listUser")
    public String ListUsers(Model model) {
        //get list
        List<User> users = adminService.list();

        model.addAttribute("users", users);
        return "admin";
    }


    @ResponseBody
    //change user type
    @GetMapping("changeUserType")
    public String changeUserType(@RequestParam Integer id, Model model){
        //1. search by id
        User user = adminService.findUserById(id);

        //2. change user type
        adminService.updateUserType(user);

        //3. save info in model
        model.addAttribute(USER_KEY, user);

        return "redirect:/admin/listUser";
    }

    //delete user by id
    @ResponseBody
    @GetMapping("/deleteUser")
    public String deleteUser(@RequestParam Integer id) {
        adminService.deleteUserById(id);
        return "redirect:/admin/listUser";
    }


}
