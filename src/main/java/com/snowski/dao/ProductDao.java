package com.snowski.dao;

import java.util.List;
import java.util.Map;

import com.snowski.entity.ProductImages;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.snowski.entity.Product;
import org.springframework.data.repository.query.Param;

public interface ProductDao extends JpaRepository<Product, Integer>{
	@Query("select distinct p from Product p left join fetch p.orders")
	List<Product> productWithOrders();

	@Query("select distinct p from Product p left join fetch p.productImages")
	List<Product> productsWithImages();

	@Query("select p from Product p left join fetch p.productImages where p.id=:id")
	Product productWithImages(@Param("id") int id);

	@Query("select p from Product p left join fetch p.productImages where p.id=:id")
	Product productWithProducerAndImages(@Param("id") int id);

	Product findProductByName(@Param("name") String name);

	@Query("select distinct p from Product p left join fetch p.productImages where p.producer=(select pr from Producer pr where pr.id=:id)")
	List<Product> findAllByProducer(@Param("id") int id);

	@Query("select distinct p from Product p left join fetch p.productImages where p.categoryOfProduct=(select c from Category c where c.id=:id)")
	List<Product> findAllByCategoryOfProduct(@Param("id") int id);

/*
	select product.id, product.name, product.price, productimages.pathToImage, min(productimages.id)
	from productimages
	join product
	on product.id = productimages.product_id
	group by product.id, product.name, product.price;

 */
}
