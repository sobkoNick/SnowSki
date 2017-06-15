package com.snowski.controller;

import java.util.List;

import com.snowski.editors.ProducerEditor;
import com.snowski.entity.Producer;
import com.snowski.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.snowski.entity.Product;
import com.snowski.service.OrderService;
import com.snowski.service.ProducerService;
import com.snowski.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private ProducerService producerService;

	@Autowired
	private OrderService orderService;
	@Autowired
	private CategoryService categoryService;

	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.registerCustomEditor(Producer.class, new ProducerEditor());
	}

	@GetMapping("/product")
	public String product(Model model) {
		model.addAttribute("products", productService.productWithOrders());
		model.addAttribute("producers", producerService.findAll());
		model.addAttribute("orders", orderService.findAll());
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("product", new Product());
		return "views-admin-product";
	}

//	@PostMapping("/product")
//	public String product(@RequestParam String name, @RequestParam String description, @RequestParam String model,
//			@RequestParam Integer price, @RequestParam Boolean avaible, @RequestParam Integer count,
//			@RequestParam String options, @RequestParam Integer weight, @RequestParam int producerId,
//			@RequestParam List<Integer> ordersIds) {
//
//		productService.save(new Product(name, description, model, price, avaible, count, options, weight), producerId,
//				ordersIds);
//
//		return "redirect:/product";
//	}

	@PostMapping("/product")
	public String product(@ModelAttribute Product product) {
		System.out.println("product = " + product);
		productService.save(product);
		return "redirect:/product";
	}

	@GetMapping("/deleteProduct/{id}")
	public String delete(@PathVariable int id) {
		productService.delete(id);
		return "redirect:/product";
	}

}
