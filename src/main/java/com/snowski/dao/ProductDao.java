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

//	@Query("select p, min(pi.id)" +
//			" from Product p" +
//			" left join fetch ProductImages pi")
//	List<Product> productsWithOnlyFirst();

	@Query("select p from Product p left join fetch p.productImages where p.id=:id")
	Product productWithImages(@Param("id") int id);

/*
	select product.id, product.name, product.price, productimages.pathToImage, min(productimages.id)
	from productimages
	join product
	on product.id = productimages.product_id
	group by product.id, product.name, product.price;

 */
}
