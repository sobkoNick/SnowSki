package com.snowski.service;

import java.util.List;

import com.snowski.entity.Product;

public interface ProductService {
	void save(Product product, int producerId, List<Integer> ordersIds);

	List<Product> findAll();

	Product findOne(int id);

	void delete(int id);

	void update(Product product);
	
	List<Product> productWithOrders();
}
