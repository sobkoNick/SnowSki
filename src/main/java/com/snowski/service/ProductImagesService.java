package com.snowski.service;

import com.snowski.entity.ProductImages;
import org.springframework.stereotype.Service;

/**
 * Created by Mykola on 25.06.2017.
 */
@Service
public interface ProductImagesService {
    ProductImages find(int id);

//    ProductImages getProductImagesByProductId(Integer id);
}
