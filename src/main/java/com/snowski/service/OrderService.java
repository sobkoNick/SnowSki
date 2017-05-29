package com.snowski.service;

import java.util.List;

import com.snowski.entity.Order;
import org.springframework.web.bind.annotation.RequestParam;

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
}
