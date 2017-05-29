package com.snowski.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.snowski.entity.Order;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.RequestParam;

public interface OrderDao extends JpaRepository<Order, Integer>{
	@Query("select distinct o from Order o left join fetch o.products")
	List<Order> orderWithProducts();
	@Query("select distinct o from Order o left join fetch o.products where o.id=:id")
	Order orderWithProducts(@Param("id") int id);
}
