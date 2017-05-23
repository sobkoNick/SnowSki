package com.snowski.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

@Entity
@Table(name = "orders") // if you want other name than user
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	//private int id_user;
	private int id_product;
	private int numberOfProducts;
	private int orderPrice;
	private String deliveryMethod;
	private String payMethod;
	private String orderStatus;
	private String comment;
	
	@ManyToOne
	private User user;
	
	@ManyToMany
	@JoinTable(name="orders_product",
	joinColumns=@JoinColumn(name="orders_id"),
	inverseJoinColumns=@JoinColumn(name="product_id"))
	private List<Product> products = new ArrayList<Product>();
	
	public Order() {
		// TODO Auto-generated constructor stub
	}

	

	public Order(int id_product, int numberOfProducts, int orderPrice, String deliveryMethod, String payMethod,
			String orderStatus, String comment, User user, List<Product> products) {
		super();
		this.id_product = id_product;
		this.numberOfProducts = numberOfProducts;
		this.orderPrice = orderPrice;
		this.deliveryMethod = deliveryMethod;
		this.payMethod = payMethod;
		this.orderStatus = orderStatus;
		this.comment = comment;
		this.user = user;
		this.products = products;
	}



	public int getId() {
		return id;
	}

	public int getId_product() {
		return id_product;
	}

	public int getNumberOfProducts() {
		return numberOfProducts;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public String getDeliveryMethod() {
		return deliveryMethod;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public String getComment() {
		return comment;
	}

	public void setId(int id) {
		this.id = id;
	}


	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public void setNumberOfProducts(int numberOfProducts) {
		this.numberOfProducts = numberOfProducts;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public void setDeliveryMethod(String deliveryMethod) {
		this.deliveryMethod = deliveryMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}
