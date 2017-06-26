package com.snowski.serviceImpl;

import com.snowski.dao.ProductDao;
import com.snowski.entity.ProductImages;
import com.snowski.service.ProductImagesService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Mykola on 25.06.2017.
 */
public class ProductImagesServiceImpl implements ProductImagesService{
    @Autowired
    private ProductDao productDao;

//    @Override
//    public ProductImages getProductImagesByProductId(Integer id) {
//        return productDao.getProductImagesByProductId(id);
//    }
}
