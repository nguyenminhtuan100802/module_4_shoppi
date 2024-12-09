package com.tuan.shoppi.controller;

import com.tuan.shoppi.entity.Product;
import com.tuan.shoppi.repository.ProductRepository;
import com.tuan.shoppi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private ProductService productService;

    @GetMapping("/products")
    public String showProducts(
            @RequestParam(name = "search", required = false) String search, Model model) {

        List<Product> products;

        if (search != null && !search.isEmpty()) {
            // Tìm kiếm sản phẩm theo tên (case-insensitive)
            products = productService.findByNameContainingIgnoreCase(search);
        } else {
            // Lấy toàn bộ sản phẩm nếu không có từ khóa tìm kiếm
            products = productService.findAll();
        }

        model.addAttribute("products", products);
        model.addAttribute("search", search); // Giữ lại từ khóa tìm kiếm
        return "user/home";
    }
}
