package com.snowski.dao;

import com.snowski.entity.ProductImages;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by Mykola on 23.06.2017.
 */
public interface ProductImagesDao extends JpaRepository<ProductImages, Integer> {

    @Query("select min(cpi.id) from ProductImages cpi where cpi.product.id =:id")
    ProductImages find(@Param("id") int id);

}
