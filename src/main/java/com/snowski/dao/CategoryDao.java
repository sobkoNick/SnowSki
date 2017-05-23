package com.snowski.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.Category;

public interface CategoryDao extends JpaRepository<Category, Integer> {
	
}
