package com.snowski.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.snowski.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{
	@Query("select distinct p from Product p left join fetch p.orders")
	List<Product> productWithOrders();
}
