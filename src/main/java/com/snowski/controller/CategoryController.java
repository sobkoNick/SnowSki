package com.snowski.controller;

import com.snowski.entity.Category;
import com.snowski.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/category")
    public ModelAndView category() {
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
    @ResponseBody
    @PostMapping("/saveCategory")
    public List<Category> saveCategory(@RequestBody Category category) throws IOException {
//		categoryService.save(category, multipartFile);
        categoryService.save(category);
        return categoryService.findAll();
    }

    @GetMapping("/deleteCategory/{id}")
    public String delete(@PathVariable int id) {
        categoryService.delete(id);

        return "redirect:/category";
    }

    @ResponseBody
    @GetMapping("/loadCategories")
    public List<Category> loadCategories() throws IOException {
        return categoryService.findAll();
    }

    @ResponseBody
    @DeleteMapping("/deleteCategory")
    public List<Category> deleteCategory(@RequestBody String idCategory) {

        categoryService.delete(Integer.parseInt(idCategory));

        return categoryService.findAll();
    }

}
