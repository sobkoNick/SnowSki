package com.snowski.controller;

import com.snowski.entity.Category;
import com.snowski.service.CategoryService;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.FileHandler;

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

	@PostMapping("/saveCategory")
	public @ResponseBody
	List<Category> saveCategory(@RequestBody Category category) throws IOException {

//		File file = new File(category.getPathToImage());
//		DiskFileItem fileItem = new DiskFileItem("file", "image/png", false, file.getName(), (int) file.length() , file.getParentFile());
//		fileItem.getOutputStream();
//		MultipartFile multipartFile = new CommonsMultipartFile(fileItem);

		System.out.println("category = " + category);
//		categoryService.save(category, multipartFile);
		categoryService.save(category);
		return categoryService.findAll();
	}
	
	@GetMapping("/deleteCategory/{id}")
	public String delete(@PathVariable int id) {
		categoryService.delete(id);

		return "redirect:/category";
	}
	
	
	
}
