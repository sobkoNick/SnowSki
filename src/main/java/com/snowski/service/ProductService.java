package com.snowski.service;

import com.snowski.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.method.P;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ProductService {
    void save(Product product, int producerId, List<Integer> ordersIds);

    void save(Product product, List<MultipartFile> images, Integer producer, Integer categoryOfProduct);

    List<Product> findAll();

    Product findOne(int id);

    void delete(int id);

    void update(Product product);

    List<Product> productWithOrders();

    Product productWithImages(int id);

    List<Product> productsWithImages();

    Page<Product> findAllPages(Pageable pageable);

    void fullUpdate(Product product);

    public Product findProductByName(String name);

    List<Product> findAllByProducer(int id);

    List<Product> findAllByCategory(int id);
}
