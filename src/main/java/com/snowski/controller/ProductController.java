package com.snowski.controller;

import com.snowski.dao.CategoryDao;
import com.snowski.dao.ProducerDao;
import com.snowski.dao.ProductDao;
import com.snowski.editors.ProducerEditor;
import com.snowski.entity.Producer;
import com.snowski.entity.Product;
import com.snowski.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Producer.class, new ProducerEditor());
    }

    @GetMapping("/product")
    public String product(Model model) {
        Map<String, Object> modelAttributes = new HashMap<>();
        modelAttributes.put("products", productService.productsWithImages());
        modelAttributes.put("producers", producerService.findAll());
        modelAttributes.put("orders", orderService.findAll());
        modelAttributes.put("categories", categoryService.findAll());
        model.addAllAttributes(modelAttributes);
        return "views-admin-product";
    }

    @GetMapping("/allproducts")
    public String allProduct(Model model, @PageableDefault Pageable pageable) {
        Map<String, Object> modelAttributes = new HashMap<>();
        modelAttributes.put("products", productService.findAllPages(pageable));
        model.addAllAttributes(modelAttributes);
        return "views-user-allproducts";
    }

    @GetMapping("/viewProduct/{id}")
    public String viewProduct(@PathVariable int id, Model model) {
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

    @GetMapping("/updateProduct/{id}")
    public String updateProduct(@PathVariable int id, Model model) {
        Map<String, Object> modelAttributes = new HashMap<>();
        modelAttributes.put("updateProduct", productService.findOne(id));
//        modelAttributes.put("producers", producerService.findAll());
//        modelAttributes.put("categories", categoryService.findAll());
        model.addAllAttributes(modelAttributes);
        return "views-admin-updateProduct";
    }

    @PostMapping("/updateProducerFully")
    public String updateProducer(@ModelAttribute Product product) {
        productService.fullUpdate(product);
        return "redirect:/product";
    }

    @GetMapping("/search/{text}")
    public String search(@PathVariable String text, Model model) {
//        System.out.println("text = " + text);
//        String prodName = text.substring(text.indexOf("=") + 1, text.indexOf("#"));
//        System.out.println("prodName = " + prodName);
        int id = productService.findProductByName(text).getId();
        model.addAttribute("product", productService.productWithImages(id));
        return "views-user-viewproduct";
    }
}
