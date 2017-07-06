package com.snowski.controller;

import com.snowski.editors.ProductEditor;
import com.snowski.entity.Order;
import com.snowski.entity.Product;
import com.snowski.entity.User;
import com.snowski.service.MailSenderService;
import com.snowski.service.OrderService;
import com.snowski.service.ProductService;
import com.snowski.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;
    @Autowired
    private ProductService productService;
    @Autowired
    private UserService userService;
    @Autowired
    private MailSenderService mailSenderService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Product.class, new ProductEditor());
    }

    @GetMapping("/order")
    private String order(Model model) {
        model.addAttribute("orders", orderService.orderWithProducts());
        model.addAttribute("products", productService.findAll());

        model.addAttribute("order", new Order());
        return "views-admin-order";
    }

//	@PostMapping("/order")
//	private String order(@ModelAttribute Order order){
//		orderService.save(order);
//		return "redirect:/order";
//	}

    @GetMapping("/deleteOrder/{id}")
    public String delete(@PathVariable int id) {
        orderService.delete(id);
        return "redirect:/order";
    }

    @GetMapping("/updateOrder/{id}")
    public String updateOrder(@PathVariable int id, Model model) {
        model.addAttribute("updateOrder", orderService.orderWithProducts(id));
        return "views-admin-updateOrder";
    }

    @GetMapping("/updateOrder/{order_id}/{product_id}")
    public String updateOrder(@PathVariable int order_id,
                              @PathVariable int product_id) {
        orderService.updateOrder(order_id, product_id);

        return "redirect:/order";
    }

    @PostMapping("/updateOrder/{order_id}/{product_id}")
    private String updateOrder(@ModelAttribute Order order) {
        orderService.save(order);
        return "redirect:/order";
    }
    @PostMapping("/updateOrderFully")
    private String updateOrderFully(@ModelAttribute Order order) {
        System.out.println("order = " + order);
        orderService.updateOrderFully(order);
//        orderService.update(order);
        return "redirect:/order";
    }

    @GetMapping("/addToCard/{id}")
    public String addToCard(@PathVariable int id, Principal principal) {
        orderService.addToCard(id, principal);
        return "redirect:/allproducts";
    }

    @PostMapping("/buy")
    public String buy(Principal principal, @RequestParam String deliveryMethod,
                      @RequestParam String payMethod, @RequestParam String comment) {
        User user = userService.findUserWithProduct(Integer.parseInt(principal.getName()));
        String productNames = "";
        int totalPrice = 0;
        for (Product product : user.getProducts()) {
            productNames += String.format("%s price: %d\n", product.getName(), product.getPrice());
            totalPrice += product.getPrice();
        }
        String theme = "Thank you for your order!";
        String mailBody = String.format("Snow Ski Store welcomes you.\nYou have done order recently.\nYour order:\n" +
                "%s\nOrder total price - %d.\n" + "Delivery method: %s.\nPay method: %s.\nYour comment: %s.\n" +
                "Thank you again! Our manager will contact you soon. Have a nice day!\nYour cincerely,\nSnow Ski Store.",
                productNames, totalPrice, deliveryMethod, payMethod, comment);

        mailSenderService.sendMail(theme, mailBody, user.getEmail());

        orderService.buy(Integer.parseInt(principal.getName()), deliveryMethod, payMethod, comment);

        return "redirect:/profile";
    }

    @GetMapping("/deleteFromBasket/{userId}/{productId}")
    private String deleteFromBasket(@PathVariable int userId, @PathVariable int productId) {
        orderService.deleteFromBasket(userId, productId);
        return "redirect:/profile";
    }
}
