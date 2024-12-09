package com.tuan.shoppi.controller;

import com.tuan.shoppi.entity.Product;
import com.tuan.shoppi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/admin/home")
public class  ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public String home(Model model) {
        model.addAttribute("products", productService.findAll());
        return "admin/home";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("product", new Product());
        return "admin/add-product";
    }

    @PostMapping("/add")
    public String addProduct(@ModelAttribute("product") Product product) {
        productService.save(product);
        return "redirect:/admin/home";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Integer id, Model model) {
        Optional<Product> product = productService.findById(id);
        if (product.isPresent()) {
            model.addAttribute("product", product.get());
            return "admin/edit-product";
        }
        return "redirect:/admin/home";
    }

    @PostMapping("/edit")
    public String editProduct(@ModelAttribute("product") Product product) {
        productService.save(product);
        return "redirect:/admin/home";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable("id") Integer id) {
        productService.deleteById(id);
        return "redirect:/admin/home";
    }
}