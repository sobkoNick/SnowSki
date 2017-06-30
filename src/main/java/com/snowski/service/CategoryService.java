package com.snowski.service;

import java.util.List;

import com.snowski.entity.Category;
import org.springframework.web.multipart.MultipartFile;

public interface CategoryService {

    public void save(Category category);

    void save(Category category, MultipartFile image);

    List<Category> findAll();

    Category findOne(int id);

    void delete(int id);

    void update(Category category);

}
