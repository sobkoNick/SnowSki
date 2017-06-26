package com.snowski.service;

import java.security.Principal;
import java.util.List;

import com.snowski.entity.Order;

public interface OrderService {
	void save(Order order, List<Integer> productsIds);
	void save(Order order);
	List<Order> findAll();

	Order findOne(int id);

	void delete(int id);

	void update(Order order);
	
	List<Order> orderWithProducts();

	Order orderWithProducts(int id);

	void updateOrder(int order_id, int product_id);

	void addToCard(int id, Principal principal);

    void deleteFromBasket(int userId, int productId);

	void buy(int userId, String deliveryMethod, String payMethod, String comment);
}
