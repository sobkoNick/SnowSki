package com.snowski.service;

import java.util.List;

import com.snowski.entity.Order;

public interface OrderService {
	void save(Order order);

	List<Order> findAll();

	Order findOne(int id);

	void delete(int id);

	void update(Order order);

}
