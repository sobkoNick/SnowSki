package com.snowski.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.ProducerDao;
import com.snowski.entity.Producer;
import com.snowski.service.ProducerService;


@Service
public class ProducerServiceImpl implements ProducerService{

	@Autowired
	private ProducerDao producerDao;
	
	public void save(Producer producer) {
		// TODO Auto-generated method stub
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
		producerDao.delete(id);
	}

	public void update(Producer producer) {
		// TODO Auto-generated method stub
		producerDao.save(producer);
	}
}
