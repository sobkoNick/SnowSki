package com.snowski.entity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.*;
//import javax.persistence.Table;

@Entity
//@Table(name = "customer") // if you want other name than user
public class User implements UserDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private String userGroup;
	private String telephone;
	private String status;
	private int discount;
	private String language;



	@Enumerated

	private  Role role;

	// TODO ADD CASCADETYPE.REMOVE----!!!!!!!!!!!!!!!!!!
	@OneToMany(mappedBy = "user") // reference to field. ADD CASCADETYPE.REMOVE----!!!!!!!!!!!!!!!!!!
	private List<Order> orders = new ArrayList<Order>(); 
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String name) {
		this.name = name;
	}

	public User(String name, String email, String password, String firstName, String lastName, String userGroup,
				String telephone, String status, int discount, String language) {
		super();
		this.name = name;
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

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public Role getRole() {
		return role;
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

	public void setName(String login) {
		this.name = login;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setRole(Role role) {
		this.role = role;
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

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return null;
	}

	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	
}
