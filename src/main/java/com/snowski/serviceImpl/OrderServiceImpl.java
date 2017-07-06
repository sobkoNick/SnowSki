package com.snowski.serviceImpl;

import java.security.Principal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.snowski.dao.UserDao;
import com.snowski.entity.User;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.OrderDao;
import com.snowski.dao.ProductDao;
import com.snowski.entity.Order;
import com.snowski.entity.Product;
import com.snowski.service.OrderService;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private UserDao userDao;

    public void save(Order order, List<Integer> productsIds) {

        List<Product> products = new ArrayList<Product>();

        for (Integer id : productsIds) {
            products.add(productDao.findOne(id));
        }

        orderDao.saveAndFlush(order);

        order.setProducts(products);

        orderDao.save(order);
    }

    public void save(Order order) {
        orderDao.save(order);
    }

    public List<Order> findAll() {
        return orderDao.findAll();
    }

    public Order findOne(int id) {
        return orderDao.findOne(id);
    }

    public void delete(int id) {
        // TODO Auto-generated method stub
        orderDao.delete(id);
    }

    public void update(Order order) {
        // TODO Auto-generated method stub
        orderDao.save(order);
    }

    @Override
    @Transactional
    public void updateOrderFully(Order order) {
        Order orderToUpdate = orderDao.findOne(order.getId());
        orderDao.saveAndFlush(orderToUpdate);
        orderToUpdate.setName(order.getName());
        orderToUpdate.setOrderStatus(order.getOrderStatus());
        orderToUpdate.setPayMethod(order.getPayMethod());
        orderToUpdate.setDeliveryMethod(order.getDeliveryMethod());
        orderToUpdate.setComment(order.getComment());
        orderDao.save(orderToUpdate);
    }

    public List<Order> orderWithProducts() {
        return orderDao.orderWithProducts();
    }

    @Override
    public Order orderWithProducts(int id) {
        return orderDao.orderWithProducts(id);
    }

    @Override
    public void updateOrder(int order_id, int product_id) {
        Order order = orderDao.orderWithProducts(order_id);

        for (Product product : order.getProducts()) {
            if (product.getId() == product_id) {
                product.setOrders(null);
            }
            productDao.save(product);
        }
    }

    @Override
    public void addToCard(int id, Principal principal) {
        User user = userDao.findUserWithProducts(4);
        Product product = productDao.findOne(id);
        user.getProducts().add(product);
        userDao.save(user);
    }

    @Override
    @Transactional
    public void buy(int userId, String deliveryMethod, String payMethod, String comment) {
        Order order = new Order(LocalDate.now());
        orderDao.saveAndFlush(order);

        User user = userDao.findUserWithProducts(userId);

        order.setUser(user);

        int counter = 0;
        int price = 0;
        for (Product product : user.getProducts()) {
            price += product.getPrice();
            counter++;

            order.getProducts().add(product);

            order.setNumberOfProducts(counter);
            order.setOrderPrice(price);
            order.setOrderStatus("active");
            order.setName(user.getName() + LocalDate.now().toString());
            order.setComment(comment);
            order.setDeliveryMethod(deliveryMethod);
            order.setPayMethod(payMethod);

            product.setCount(product.getCount() - 1); // reduces product count after shopping

            orderDao.save(order);
        }

        user.getProducts().clear();
        userDao.save(user);
    }

    @Override
    @Transactional
    public void deleteFromBasket(int userId, int productId) {
        User user = userDao.findUserWithProducts(userId);

        Product product = productDao.findOne(productId);

        user.getProducts().remove(product);
        userDao.save(user);
    }
}
