package com.snowski.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	// image ??
	private String model;
	private int price;
	private boolean avaible;
	private int count;
	private String options;
	private int weight;
	
	@ManyToMany
	@JoinTable(name="orders_product",
	joinColumns=@JoinColumn(name="product_id"),
	inverseJoinColumns=@JoinColumn(name="orders_id"))
	private List<Order> orders = new ArrayList<Order>();
	
	@ManyToOne
	private Producer producer;
	@ManyToOne
	private Category categoryOfProduct;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String name, int price) {
		this.name = name;
		this.price = price;
	}

	public Product(String name, String description, String model, int price, boolean avaible, int count, String options,
				   int weight) {
		super();
		this.name = name;
		this.description = description;
		this.model = model;
		this.price = price;
		this.avaible = avaible;
		this.count = count;
		this.options = options;
		this.weight = weight;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public int getPrice() {
		return price;
	}
	public int getWeight() {
		return weight;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getDescription() {
		return description;
	}

	public String getModel() {
		return model;
	}

	public boolean isAvaible() {
		return avaible;
	}

	public int getCount() {
		return count;
	}

	public String getOptions() {
		return options;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public void setAvaible(boolean avaible) {
		this.avaible = avaible;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setOptions(String options) {
		this.options = options;
	}



	public List<Order> getOrders() {
		return orders;
	}



	public Producer getProducer() {
		return producer;
	}



	public Category getCategoryOfProduct() {
		return categoryOfProduct;
	}



	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}



	public void setProducer(Producer producer) {
		this.producer = producer;
	}



	public void setCategoryOfProduct(Category categoryOfProduct) {
		this.categoryOfProduct = categoryOfProduct;
	}
	
}
