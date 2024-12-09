package com.tuan.shoppi.service;

import com.tuan.shoppi.entity.Product;
import com.tuan.shoppi.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class ProductService {
    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> findAll() {
        return productRepository.findAll();
    }
    public List<Product> findByNameContainingIgnoreCase(String name) {
        return productRepository.findByNameContainingIgnoreCase(name);
    }
}
