package com.snowski.serviceImpl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.snowski.dao.*;
import com.snowski.entity.ProductImages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.snowski.entity.Order;
import com.snowski.entity.Producer;
import com.snowski.entity.Product;
import com.snowski.service.ProductService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;
    @Autowired
    private ProducerDao producerDao;
    @Autowired
    private CategoryDao categoryDao;
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private ProductImagesDao productImagesDao;


    public void save(Product product, int producerId, List<Integer> ordersIds) {
        // TODO Auto-generated method stub
        List<Order> orders = new ArrayList<Order>();

        for (Integer id : ordersIds) {
            orders.add(orderDao.findOne(id));
        }
        productDao.saveAndFlush(product);

        product.setOrders(orders);

        Producer producer = producerDao.findOne(producerId);

        product.setProducer(producer);
        productDao.save(product);
    }

    public void save(Product product, List<MultipartFile> images, Integer producer, Integer categoryOfProduct) {

        productDao.saveAndFlush(product);

        product.setProducer(producerDao.findOne(producer));
        product.setCategoryOfProduct(categoryDao.findOne(categoryOfProduct));

        for (MultipartFile multipartFile : images) {

//			String path = "C:\\Users\\Mykola\\Downloads\\apache-tomcat-8.0.44-windows-x64\\apache-tomcat-8.0.44\\resources\\"
//					+ product.getName() + "\\" + multipartFile.getOriginalFilename();

            String path = System.getProperty("catalina.home") + "/resources/"
                    + product.getName() + "/" + multipartFile.getOriginalFilename();

            ProductImages productImages =
                    new ProductImages("resources/" + product.getName() + "/"
                            + multipartFile.getOriginalFilename());

            productImagesDao.saveAndFlush(productImages);
            productImages.setProduct(product);

            File filePath = new File(path);

            if (!filePath.exists()) {
                filePath.mkdirs();
            }

            try {
                filePath.mkdirs();
                multipartFile.transferTo(filePath);
            } catch (Exception e) {
                System.out.println("Error with file");
            }

            productImagesDao.save(productImages);
        }
        // sets first image from images as cover image
        String path = System.getProperty("catalina.home") + "/resources/"
                + product.getName() + "/" + images.get(0).getOriginalFilename();

        product.setPathToImage("resources/" + product.getName() + "/"
                + images.get(0).getOriginalFilename());

        File filePath = new File(path);

        try {
            filePath.mkdirs();
            images.get(0).transferTo(filePath);
        } catch (Exception e) {
            System.out.println("Error with file");
        }
        productDao.save(product);
    }

    public List<Product> findAll() {
        return productDao.findAll();
    }

    public Product findOne(int id) {
        return productDao.findOne(id);
    }

    public void delete(int id) {


        productDao.delete(id);
    }

    public void update(Product product) {
        productDao.save(product);
    }

    public List<Product> productWithOrders() {
        return productDao.productWithOrders();
    }

    @Override
    public Product productWithImages(int id) {
        return productDao.productWithImages(id);
    }

    @Override
    public Page<Product> findAllPages(Pageable pageable) {
        return productDao.findAll(pageable);
    }

    @Override
    public List<Product> productsWithImages() {
        return productDao.productsWithImages();
    }

    @Transactional
    @Override
    public void fullUpdate(Product product) {
        Product productToUpdate = productDao.findOne(product.getId());
        productDao.saveAndFlush(productToUpdate);
        productToUpdate.setId(product.getId());
        productToUpdate.setPathToImage(product.getPathToImage());
        productToUpdate.setCount(product.getCount());
        productToUpdate.setCategoryOfProduct(product.getCategoryOfProduct());
        productToUpdate.setProducer(product.getProducer());
        productToUpdate.setAvaible(product.isAvaible());
        productToUpdate.setDescription(product.getDescription());
        productToUpdate.setName(product.getName());
        productToUpdate.setModel(product.getModel());
        productToUpdate.setOptions(product.getOptions());
        productToUpdate.setPrice(product.getPrice());
        productToUpdate.setWeight(product.getWeight());
        productDao.save(productToUpdate);
    }

    @Override
    public Product findProductByName(String name) {
        return productDao.findProductByName(name);
    }

    @Override
    public List<Product> findAllByProducer(int id) {
        return productDao.findAllByProducer(id);
    }
}
