package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @GetMapping("/login")
    public String loginPage() {
        return "common/login"; // Login page
    }

    @GetMapping("/post-login")
    public String postLoginRedirect(@RequestParam("username") String username) {
        // Simple role-based redirection based on username
        if ("admin".equalsIgnoreCase(username)) {
            return "redirect:/admin/dashboard"; // Redirect to admin dashboard
        } else if ("user".equalsIgnoreCase(username)) {
            return "redirect:/user/dashboard"; // Redirect to user dashboard
        }
        return "redirect:/login?error=true"; // Invalid login attempt
    }
}