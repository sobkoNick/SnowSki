package com.snowski.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.snowski.entity.Product;
import com.snowski.service.ProducerService;
import com.snowski.service.ProductService;


@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProducerService producerService;
	
	@GetMapping("/product")
	public String product(Model model){
		
		model.addAttribute("products", productService.findAll());
		model.addAttribute("producers", producerService.findAll());
		
		return "product";
	}
	
	@PostMapping("/product")
	public String product(@RequestParam String name, @RequestParam String description, @RequestParam String model,
			@RequestParam Integer price, @RequestParam Boolean avaible, @RequestParam Integer count, 
			@RequestParam String options, @RequestParam Integer weight, @RequestParam int producerId){
		
		productService.save(new Product(name, description, model, price, avaible, count, options, weight), producerId);
		
		return "redirect:/product";
	}
	
}
