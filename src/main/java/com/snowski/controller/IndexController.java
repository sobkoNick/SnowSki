package com.snowski.controller;

import com.snowski.entity.Category;
import com.snowski.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
	@Autowired
	private CategoryService categoryService;
	@GetMapping("/")
	public String index() {
		return "views-main-index";
	}

	@PostMapping("/")
	public String indexAfterLogin() {
		return "views-main-index";
	}

//	@GetMapping("/category") // put it here cos categoryController is REST now
//	public ModelAndView category() {
//		Map<String, List<Category>> map = new HashMap<String, List<Category>>();
//		map.put("categories", categoryService.findAll());
//		return new ModelAndView("views-admin-category", map);
//	}
//
//	@GetMapping("/deleteCategory/{id}")
//	public String delete(@PathVariable int id) {
//		categoryService.delete(id);
//
//		return "redirect:/category";
//	}
}
