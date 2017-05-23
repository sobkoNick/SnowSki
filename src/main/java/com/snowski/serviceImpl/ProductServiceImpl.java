package com.snowski.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.ProducerDao;
import com.snowski.dao.ProductDao;
import com.snowski.entity.Producer;
import com.snowski.entity.Product;
import com.snowski.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	@Autowired
	private ProducerDao producerDao;
	
	
	public void save(Product product, int producerId) {
		// TODO Auto-generated method stub
		
		Producer producer = producerDao.findOne(producerId);
		
		productDao.saveAndFlush(product);
		product.setProducer(producer);
		
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

}
