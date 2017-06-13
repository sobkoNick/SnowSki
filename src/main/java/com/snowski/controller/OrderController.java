package com.snowski.controller;

import java.util.List;

import com.snowski.editors.ProducerEditor;
import com.snowski.editors.ProductEditor;
import com.snowski.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.snowski.entity.Order;
import com.snowski.service.OrderService;
import com.snowski.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;

	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.registerCustomEditor(Product.class, new ProductEditor());
	}
	
	@GetMapping("/order")
	private String order(Model model){
		model.addAttribute("orders", orderService.orderWithProducts());
		model.addAttribute("products", productService.findAll());

		model.addAttribute("order", new Order());
		return "views-user-order";
	}

//	@PostMapping("/order")
//	private String order(@ModelAttribute Order order){
//		orderService.save(order);
//		return "redirect:/order";
//	}

	@GetMapping("/deleteOrder/{id}")
	public String delete(@PathVariable int id) {
		orderService.delete(id);
		return "redirect:/views-user-order";
	}
	@GetMapping ("/updateOrder/{id}")
	public String updateOrder(@PathVariable int id, Model model){
		model.addAttribute("updateOrder", orderService.orderWithProducts(id));
		return  "views-user-updateOrder";
	}

	@GetMapping("/updateOrder/{order_id}/{product_id}")
	public String updateOrder(@PathVariable int order_id,
							  @PathVariable int product_id) {
		orderService.updateOrder(order_id, product_id);

		return "redirect:/views-user-order";
	}

	@PostMapping("/order")
	private String order(@RequestParam String name, @RequestParam Integer numberOfProducts, @RequestParam Integer orderPrice,
			@RequestParam String deliveryMethod, @RequestParam String payMethod,
			@RequestParam String orderStatus, @RequestParam String comment, @RequestParam List<Integer> productsIds) {

		orderService.save(new Order(name, numberOfProducts, orderPrice, deliveryMethod, payMethod, orderStatus, comment), productsIds);
				return "redirect:/views-user-order";

	}
}
