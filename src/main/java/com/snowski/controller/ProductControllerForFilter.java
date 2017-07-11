package com.snowski.controller;

import com.snowski.entity.Product;
import com.snowski.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

/**
 * Created by Mykola on 12.07.2017.
 */
@RestController
public class ProductControllerForFilter {
    @Autowired
    private ProductService productService;

    @ResponseBody
    @GetMapping("/loadProducts")
    public List<Product> loadCategories() throws IOException {
        return productService.productsWithImages();
    }
}
