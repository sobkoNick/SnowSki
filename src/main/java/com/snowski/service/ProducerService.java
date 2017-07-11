package com.snowski.service;

import java.util.List;

import com.snowski.entity.Producer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

public interface ProducerService {
	void save(Producer producer, MultipartFile image) throws Exception;

	List<Producer> findAll();

	Producer findOne(int id);

	void delete(int id);

	void update(Producer producer);
	void fullUpdate(Producer producer);

	Page<Producer> findAllPages(Pageable pageable);



}
