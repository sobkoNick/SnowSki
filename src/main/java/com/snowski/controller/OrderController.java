package com.snowski.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.snowski.entity.Order;
import com.snowski.service.OrderService;
import com.snowski.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/order")
	private String order(Model model){
		model.addAttribute("orders", orderService.orderWithProducts());
		model.addAttribute("products", productService.findAll());
		return "/order";
	}
	
	@PostMapping("/order")
	private String order(@RequestParam String name, @RequestParam Integer numberOfProducts, @RequestParam Integer orderPrice,
			@RequestParam String deliveryMethod, @RequestParam String payMethod,
			@RequestParam String orderStatus, @RequestParam String comment, @RequestParam List<Integer> productsIds) {
		
		orderService.save(new Order(name, numberOfProducts, orderPrice, deliveryMethod, payMethod, orderStatus, comment), productsIds);
				return "redirect:/order";
		
	}
}
