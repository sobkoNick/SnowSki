package com.snowski.service;

import java.util.List;

import com.snowski.entity.Product;
import org.springframework.web.multipart.MultipartFile;

public interface ProductService {
	void save(Product product, int producerId, List<Integer> ordersIds);
	void save(Product product, MultipartFile image, Integer producer, Integer categoryOfProduct);
	List<Product> findAll();

	Product findOne(int id);

	void delete(int id);

	void update(Product product);
	
	List<Product> productWithOrders();
}
