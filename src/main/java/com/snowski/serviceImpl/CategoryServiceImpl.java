package com.snowski.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.CategoryDao;
import com.snowski.entity.Category;
import com.snowski.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDao categoryDao;
	
	public void save(Category category) {
		// TODO Auto-generated method stub
		categoryDao.save(category);
	}

	public List<Category> findAll() {
		return categoryDao.findAll();
	}

	public Category findOne(int id) {
		return categoryDao.findOne(id);
	}

	public void delete(int id) {
		categoryDao.delete(id);
	}

	public void update(Category category) {
		// TODO Auto-generated method stub
		categoryDao.save(category);
	}

}
