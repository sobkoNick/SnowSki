package com.snowski.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.Order;

public interface OrderDao extends JpaRepository<Order, Integer>{
	
}
