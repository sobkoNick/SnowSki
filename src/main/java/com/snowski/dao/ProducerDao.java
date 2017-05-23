package com.snowski.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.Producer;

public interface ProducerDao extends JpaRepository<Producer, Integer>{

}
