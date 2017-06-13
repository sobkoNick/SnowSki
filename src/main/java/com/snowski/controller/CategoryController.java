package com.snowski.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.snowski.entity.Category;
import com.snowski.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
//	@GetMapping("/category")
//	public String category(Model model){
//		
//		model.addAttribute("categories", categoryService.findAll());
//		
//		return "category";
//	}
	
	@GetMapping("/category")
	public ModelAndView category(){
		Map<String, List<Category>> map = new HashMap<String, List<Category>>();
		map.put("categories", categoryService.findAll());
		return new ModelAndView("views-admin-category", map);
	}
	
	@PostMapping("/category")
	public String category(@RequestParam String name, @RequestParam String description, @RequestParam String availability,
			@RequestParam Integer numberOfProducts, @RequestParam Integer numberInHierarchy){
		
		categoryService.save(new Category(name, description, availability, numberOfProducts, numberInHierarchy));
		
		return "redirect:/views-admin-category";
	}
	
	@GetMapping("/deleteCategory/{id}")
	public String delete(@PathVariable int id) {
		categoryService.delete(id);
		return "redirect:/views-admin-category";
	}
	
	
	
}
