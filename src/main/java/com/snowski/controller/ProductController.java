package com.snowski.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.snowski.dao.CategoryDao;
import com.snowski.dao.ProducerDao;
import com.snowski.dao.ProductDao;
import com.snowski.editors.ProducerEditor;
import com.snowski.entity.Producer;
import com.snowski.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.snowski.entity.Product;
import org.springframework.web.multipart.MultipartFile;

import static java.util.stream.Collectors.*;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private ProducerDao producerDao;
    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private ProducerService producerService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private CategoryService categoryService;

//    @Autowired
//    private ProductImagesService productImagesService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Producer.class, new ProducerEditor());
    }

    @GetMapping("/product")
    public String product(Model model) {
        Map<String, Object> modelAttributes = new HashMap<>();

//        List<Product> products = productService.productsWithImages();

//        modelAttributes.put("products", productService.productWithOrders());
        modelAttributes.put("products", productService.productsWithOnlyFirstImage());

//		model.addAttribute("images",productService.productsWithImages().get(0).getProductImages());
        // в продукта є ліст картинок з них треба взяти нульову
//		List<Product> products = productService.productsWithImages();
//		products.get(0).getProductImages().get(0).

        modelAttributes.put("producers", producerService.findAll());
        modelAttributes.put("orders", orderService.findAll());
        modelAttributes.put("categories", categoryService.findAll());

//        products.stream().collect(groupingBy(toList(), product()));

//		model.addAttribute("product", new Product());
        model.addAllAttributes(modelAttributes);
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
    public String product(@RequestParam String name, @RequestParam Integer price,
                          @RequestParam Integer producer, @RequestParam Integer categoryOfProduct,
                          @RequestParam String description, @RequestParam String model,
                          @RequestParam boolean avaible, @RequestParam Integer count, @RequestParam String options,
                          @RequestParam Integer weight, @RequestParam List<MultipartFile> images) {
        System.out.println("categoryOfProduct = " + categoryOfProduct);
        System.out.println("producer = " + producer);

        Product product = new Product(name, description, model, price, avaible, count, options, weight);
        productService.save(product, images, producer, categoryOfProduct);

        return "redirect:/product";
    }

    @GetMapping("/deleteProduct/{id}")
    public String delete(@PathVariable int id) {
        productService.delete(id);
        return "redirect:/product";
    }

}
