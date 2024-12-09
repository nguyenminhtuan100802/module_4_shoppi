package com.example.demo.controller;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
public class AuthController {
    @GetMapping("/login")
    public String loginPage() {
        return "common/login";
    }
    @GetMapping("/post-login")
    public String postLoginRedirect(Authentication authentication) {
        if (authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ADMIN"))) {
            return "redirect:/admin/dashboard";
        } else if (authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_USER"))) {
            return "redirect:/user/dashboard";
        }
        return "redirect:/login?error=true";
    }
}
