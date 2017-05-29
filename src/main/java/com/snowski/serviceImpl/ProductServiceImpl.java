package com.snowski.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.OrderDao;
import com.snowski.dao.ProducerDao;
import com.snowski.dao.ProductDao;
import com.snowski.entity.Order;
import com.snowski.entity.Producer;
import com.snowski.entity.Product;
import com.snowski.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	@Autowired
	private ProducerDao producerDao;
	@Autowired
	private OrderDao orderDao;
	
	
	public void save(Product product, int producerId, List<Integer> ordersIds) {
		// TODO Auto-generated method stub
		List<Order> orders = new ArrayList<Order>();
		
		for (Integer id : ordersIds) {
			orders.add(orderDao.findOne(id));
		}
		productDao.saveAndFlush(product);
		
		product.setOrders(orders);
		
		Producer producer = producerDao.findOne(producerId);
		
		product.setProducer(producer);
		productDao.save(product);
	}

	public void save(Product product){
		productDao.save(product);
	}

	public List<Product> findAll() {
		return productDao.findAll();
	}

	public Product findOne(int id) {
		return productDao.findOne(id);
	}

	public void delete(int id) {
		productDao.delete(id);
	}

	public void update(Product product) {
		productDao.save(product);
	}

	public List<Product> productWithOrders() {
		return productDao.productWithOrders();
	}

}
