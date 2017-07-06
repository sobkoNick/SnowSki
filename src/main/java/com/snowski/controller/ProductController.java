package com.snowski.controller;

import com.snowski.dao.CategoryDao;
import com.snowski.dao.ProducerDao;
import com.snowski.dao.ProductDao;
import com.snowski.editors.ProducerEditor;
import com.snowski.entity.Producer;
import com.snowski.entity.Product;
import com.snowski.service.CategoryService;
import com.snowski.service.OrderService;
import com.snowski.service.ProducerService;
import com.snowski.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
//        System.out.println("productService = " + productService.productsWithOnlyFirstImage());

//        modelAttributes.put("products", productService.findAllPages(pageable));
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

    @GetMapping("/allproducts")
    public String allProduct(Model model) {
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

        model.addAllAttributes(modelAttributes);
        return "views-user-allproducts";
    }

    @GetMapping("/viewProduct/{id}")
    public String viewProduct(@PathVariable int id, Model model) {
//        Product product =  productService.productWithImages(id);

//        System.out.println("product = " + product);

        model.addAttribute("product", productService.productWithImages(id));

        return "views-user-viewproduct";
    }

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
