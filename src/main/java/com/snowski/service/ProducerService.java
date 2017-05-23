package com.snowski.service;

import java.util.List;

import com.snowski.entity.Producer;

public interface ProducerService {
	void save(Producer producer);

	List<Producer> findAll();

	Producer findOne(int id);

	void delete(int id);

	void update(Producer producer);
}
