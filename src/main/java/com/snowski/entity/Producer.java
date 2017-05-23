package com.snowski.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Producer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	// logo
	private int numberOfProducts;

	@OneToMany(mappedBy = "producer")
	List<Product> products = new ArrayList<Product>();
	
	public Producer() {
		// TODO Auto-generated constructor stub
	}

	public Producer(String name, String description, int numberOfProducts) {
		super();
		this.name = name;
		this.description = description;
		this.numberOfProducts = numberOfProducts;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public int getNumberOfProducts() {
		return numberOfProducts;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setNumberOfProducts(int numberOfProducts) {
		this.numberOfProducts = numberOfProducts;
	}

}
