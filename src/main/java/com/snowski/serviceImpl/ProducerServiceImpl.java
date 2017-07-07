package com.snowski.serviceImpl;

import java.io.File;
import java.util.List;

import com.snowski.dao.ProductDao;
import com.snowski.entity.Product;
import com.snowski.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.snowski.dao.ProducerDao;
import com.snowski.entity.Producer;
import com.snowski.service.ProducerService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


@Service
public class ProducerServiceImpl implements ProducerService{

	@Autowired
	private ProducerDao producerDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	@Qualifier("producerValidator")
	private Validator validator;
	
	public void save(Producer producer, MultipartFile image) throws Exception {

		validator.validate(producer);
		producerDao.saveAndFlush(producer);

		String path = System.getProperty("catalina.home") + "/resources/"
				+ producer.getName() + "/" + image.getOriginalFilename();

		producer.setPathToImage("resources/" + producer.getName() + "/" + image.getOriginalFilename());

		File filePath = new File(path);

		try {
			filePath.mkdirs();
			image.transferTo(filePath);
		} catch (Exception e) {
			System.out.println("Error with file");
		}

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
	@Transactional
	@Override
	public void fullUpdate(Producer producer) {
		Producer producerToUpdate = producerDao.findOne(producer.getId());
		producerDao.saveAndFlush(producerToUpdate);
		producerToUpdate.setDescription(producer.getDescription());
		producerToUpdate.setName(producer.getName());
		producerToUpdate.setNumberOfProducts(producer.getNumberOfProducts());
		producerToUpdate.setPathToImage(producer.getPathToImage());
		producerDao.save(producerToUpdate);
	}

	@Override
	public Page<Producer> findAllPages(Pageable pageable) {
		return producerDao.findAll(pageable);
	}
}
