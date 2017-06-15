package com.snowski.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	// image
	private String availability;
	private int numberOfProducts;
	private int numberInHierarchy;

	private String pathToImage;



	@OneToMany(mappedBy="categoryOfProduct")
	List<Product> products = new ArrayList<Product>();
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(String name, String description, String availability, int numberOfProducts, int numberInHierarchy) {
		super();
		this.name = name;
		this.description = description;
		this.availability = availability;
		this.numberOfProducts = numberOfProducts;
		this.numberInHierarchy = numberInHierarchy;
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

	public String getAvailability() {
		return availability;
	}

	public int getNumberOfProducts() {
		return numberOfProducts;
	}

	public int getNumberInHierarchy() {
		return numberInHierarchy;
	}

	public String getPathToImage() {
		return pathToImage;
	}

	public void setPathToImage(String pathToImage) {
		this.pathToImage = pathToImage;
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

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public void setNumberOfProducts(int numberOfProducts) {
		this.numberOfProducts = numberOfProducts;
	}

	public void setNumberInHierarchy(int numberInHierarchy) {
		this.numberInHierarchy = numberInHierarchy;
	}
	
	
}
