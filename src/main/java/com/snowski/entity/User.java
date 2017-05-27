package com.snowski.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
//import javax.persistence.Table;

@Entity
//@Table(name = "customer") // if you want other name than user
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String login;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private String userGroup;
	private String telephone;
	private String status;
	private int discount;
	private String language;
	// TODO ADD CASCADETYPE.REMOVE----!!!!!!!!!!!!!!!!!!
	@OneToMany(mappedBy = "user") // reference to field. ADD CASCADETYPE.REMOVE----!!!!!!!!!!!!!!!!!!
	private List<Order> orders = new ArrayList<Order>(); 
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String login) {
		this.login = login;
	}

	public User(String login, String email, String password, String firstName, String lastName, String userGroup,
				String telephone, String status, int discount, String language) {
		super();
		this.login = login;
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userGroup = userGroup;
		this.telephone = telephone;
		this.status = status;
		this.discount = discount;
		this.language = language;
	}

	public int getId() {
		return id;
	}

	public String getLogin() {
		return login;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}


	public String getTelephone() {
		return telephone;
	}

	public String getStatus() {
		return status;
	}

	public int getDiscount() {
		return discount;
	}

	public String getLanguage() {
		return language;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public void setLanguage(String language) {
		this.language = language;
	}



	public String getFirstName() {
		return firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public String getUserGroup() {
		return userGroup;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public void setUserGroup(String userGroup) {
		this.userGroup = userGroup;
	}
	
}
