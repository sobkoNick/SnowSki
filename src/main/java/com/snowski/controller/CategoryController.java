package com.snowski.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.snowski.entity.Category;
import com.snowski.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	
	@GetMapping("/category")
	public ModelAndView category(){
		Map<String, List<Category>> map = new HashMap<String, List<Category>>();
		map.put("categories", categoryService.findAll());
		return new ModelAndView("views-admin-category", map);
	}
	
//	@PostMapping("/category")
//	public String category(@RequestParam String name, @RequestParam String description,
//						   @RequestParam String availability, @RequestParam Integer numberOfProducts,
//						   @RequestParam Integer numberInHierarchy, @RequestParam MultipartFile image){
//
//		categoryService.save(new Category(name, description, availability, numberOfProducts, numberInHierarchy), image);
//
//		return "redirect:/category";
//	}

	@PostMapping("/city")
	public void loadCategories(@RequestBody Category category){
		System.out.println("category = " + category);
	}
	
	@GetMapping("/deleteCategory/{id}")
	public String delete(@PathVariable int id) {
		categoryService.delete(id);
		return "redirect:/category";
	}
	
	
	
}
