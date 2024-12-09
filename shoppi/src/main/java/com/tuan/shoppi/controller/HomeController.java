package com.tuan.shoppi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @GetMapping("/login")
    public String loginPage() {
        // Adjusted logical view name to match your JSP file location
        return "login";
    }

    @PostMapping("/post-login")
    public String postLoginRedirect(
            @RequestParam("username") String username,
            @RequestParam("password") String password) {

        // Validate credentials and redirect accordingly
        if ("admin".equalsIgnoreCase(username) && "admin".equals(password)) {
            return "admin/home";
        } else if ("user".equalsIgnoreCase(username) && "user".equals(password)) {
            return "user/home";
        }
        return "redirect:/login?error=true";
    }
}
