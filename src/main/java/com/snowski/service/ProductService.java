package com.snowski.service;

import java.util.List;

import com.snowski.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

public interface ProductService {
	void save(Product product, int producerId, List<Integer> ordersIds);
	void save(Product product, List<MultipartFile> images, Integer producer, Integer categoryOfProduct);
	List<Product> findAll();

	Product findOne(int id);

	void delete(int id);

	void update(Product product);
	
	List<Product> productWithOrders();

	List<Product> productsWithOnlyFirstImage();

	Product productWithImages(int id);

	Page<Product> findAllPages(Pageable pageable);

//	List<Product> productsWithImages();
}
