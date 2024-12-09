package com.example.demo.controller.admin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public class LoginController {
    @GetMapping("/admin/dashboard")
    public String adminDashboard(Model model) {
        model.addAttribute("message", "Welcome to the Admin Dashboard!");
        return "admin/dashboard";
    }
    @GetMapping("/admin/settings")
    public String adminSettings(Model model) {
        model.addAttribute("message", "Admin Settings Page");
        return "admin/settings";
    }
}
