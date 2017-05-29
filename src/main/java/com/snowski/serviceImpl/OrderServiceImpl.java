package com.snowski.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.OrderDao;
import com.snowski.dao.ProductDao;
import com.snowski.entity.Order;
import com.snowski.entity.Product;
import com.snowski.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;
	@Autowired
	private ProductDao productDao;
	
	public void save(Order order, List<Integer> productsIds) { 
		
		List<Product> products = new ArrayList<Product>();
		
		for(Integer id: productsIds){
			products.add(productDao.findOne(id));
		}
		
		orderDao.saveAndFlush(order);
		
		order.setProducts(products);
		
		orderDao.save(order);
	}
	public void save(Order order) {
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

	public List<Order> orderWithProducts() {
		return orderDao.orderWithProducts();
	}

	@Override
	public Order orderWithProducts(int id) {
		return orderDao.orderWithProducts(id);
	}

	@Override
	public void updateOrder(int order_id, int product_id) {
		Order order = orderDao.orderWithProducts(order_id);

		for (Product product: order.getProducts()
			 ) {
			if (product.getId() == product_id) {
				product.setOrders(null);
			}
			productDao.save(product);
		}
	}
}
