package com.snowski.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.snowski.entity.Order;

public interface OrderDao extends JpaRepository<Order, Integer>{
	@Query("select distinct o from Order o left join fetch o.products")
	List<Order> orderWithProducts();
}
