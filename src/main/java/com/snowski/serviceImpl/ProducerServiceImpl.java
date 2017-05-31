package com.snowski.serviceImpl;

import java.util.List;

import com.snowski.dao.ProductDao;
import com.snowski.entity.Product;
import com.snowski.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.snowski.dao.ProducerDao;
import com.snowski.entity.Producer;
import com.snowski.service.ProducerService;


@Service
public class ProducerServiceImpl implements ProducerService{

	@Autowired
	private ProducerDao producerDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	@Qualifier("producerValidator")
	private Validator validator;
	
	public void save(Producer producer) throws Exception {
		// TODO Auto-generated method stub
		validator.validate(producer);
		producerDao.save(producer);
	}

	public List<Producer> findAll() {
		return producerDao.findAll();
	}

	public Producer findOne(int id) {
		return producerDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		Producer producer = producerDao.producerWithProducts(id);

		for (Product product : producer.getProducts()){
			product.setProducer(null);
			productDao.save(product);
		}

		producerDao.delete(id);
	}

	public void update(Producer producer) {
		// TODO Auto-generated method stub
		producerDao.save(producer);
	}
}
