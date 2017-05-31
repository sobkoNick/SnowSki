package com.snowski.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.Producer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ProducerDao extends JpaRepository<Producer, Integer>{
    @Query("select p from Producer p left join fetch p.products where p.id=:id")
    Producer producerWithProducts(@Param("id") int id);
}
