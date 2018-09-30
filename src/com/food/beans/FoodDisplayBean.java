package com.food.beans;

import java.util.Date;

public class FoodDisplayBean {
	private String name,email,mobileno,address;
	int quantity;
	Date datePosted;

	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public FoodDisplayBean(String name, String email, String mobileno, String address, int quantity, Date postedDate) {
		super();
		this.name = name;
		this.email = email;
		this.mobileno = mobileno;
		this.address = address;
		this.quantity = quantity;
		this.datePosted = postedDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}