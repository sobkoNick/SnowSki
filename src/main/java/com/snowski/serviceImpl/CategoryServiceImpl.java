package com.snowski.serviceImpl;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.CategoryDao;
import com.snowski.entity.Category;
import com.snowski.service.CategoryService;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDao categoryDao;
	
	public void save(Category category, MultipartFile image) {
		// TODO Auto-generated method stub
		categoryDao.saveAndFlush(category);

		String path = System.getProperty("catalina.home") + "/resources/"
				+ category.getName() + "/" + image.getOriginalFilename();

		category.setPathToImage("resources/" + category.getName() + "/" + image.getOriginalFilename());

		File filePath = new File(path);

		try {
			filePath.mkdirs();
			image.transferTo(filePath);
		} catch (Exception e) {
			System.out.println("Error with file");
		}

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
