package com.snowski.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer>{
	
	
}
