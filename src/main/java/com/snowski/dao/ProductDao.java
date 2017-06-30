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

//	ProductImages getProductImagesByProductId(Integer id);

	//------------------
//	@Query("select p from Product p inner join p.productImages on Product.id = ProductImages.id group by Product.id, Product.name, Product.price")
//	List<Product> productsWithOnlyFirstImage();
//
//	@Query("select p, min(ProductImages.id) from ProductImages join Product p on Product.id = " +
//			"ProductImages.id group by Product.id, Product.name, Product.price")
//	List<Product> productsWithOnlyFirstImage();
//	Map<Product, String> productWithFirstImage();

//	@Query("select Product.id, Product.name, Product.price, ProductImages.pathToImage, min(ProductImages.id)" +
//			" from ProductImages" +
//			" join Product" +
//			" on Product.id = ProductImages.product_id" +
//			" group by Product.id, Product.name, Product.price")

	@Query("select distinct p from Product p left join fetch p.productImages")
	List<Product> productsWithOnlyFirstImage();

	@Query("select distinct p from Product p left join fetch p.productImages where p.id=:id")
	Product productWithImages(@Param("id") int id);

/*
	select product.id, product.name, product.price, productimages.pathToImage, min(productimages.id)
	from productimages
	join product
	on product.id = productimages.product_id
	group by product.id, product.name, product.price;

 */
}
