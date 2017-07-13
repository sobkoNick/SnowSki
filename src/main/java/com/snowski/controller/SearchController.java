package com.snowski.controller;

import com.snowski.service.CategoryService;
import com.snowski.service.OrderService;
import com.snowski.service.ProducerService;
import com.snowski.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.awt.*;
import java.util.HashMap;
import java.util.Map;

@Controller
public class SearchController {
    @Autowired
    private ProductService productService;
    @Autowired
    private ProducerService producerService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CategoryService categoryService;

//    @GetMapping("/product/{producer}")
//    public String getByProducer(Model model, @PathVariable String producer) {
//        System.out.println("producer = " + producer);
//        model.addAttribute("products", productService.findAllByProducer(producer));
//        return "views-admin-allproducts";
//    }

}
