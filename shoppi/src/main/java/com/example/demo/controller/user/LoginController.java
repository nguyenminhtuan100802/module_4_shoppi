package com.example.demo.controller.user;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
public class LoginController {
    @GetMapping("/user/dashboard")
    public String userDashboard(Model model) {
        model.addAttribute("message", "Welcome to the User Dashboard!");
        return "user/dashboard";
    }
    @GetMapping("/user/profile")
    public String userProfile(Model model) {
        model.addAttribute("message", "User Profile Page");
        return "user/profile";
    }
}
