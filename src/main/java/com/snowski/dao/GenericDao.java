package com.snowski.dao;

import java.util.List;

public interface GenericDao <T> {
	void save (T t);
	List<T> findAll();
	T findOne(String name);
	void delete(String name);
	void update(T t);
}
