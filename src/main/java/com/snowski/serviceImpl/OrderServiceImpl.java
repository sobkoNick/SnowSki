package com.snowski.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.OrderDao;
import com.snowski.entity.Order;
import com.snowski.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;
	
	public void save(Order order) {
		// TODO Auto-generated method stub
		orderDao.save(order);
	}

	public List<Order> findAll() {
		return orderDao.findAll();
	}

	public Order findOne(int id) {
		return orderDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		orderDao.delete(id);
	}

	public void update(Order order) {
		// TODO Auto-generated method stub
		orderDao.save(order);
	}

}
