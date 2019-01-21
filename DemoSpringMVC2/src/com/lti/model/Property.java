package com.lti.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="Property")
public class Property implements Serializable{



	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int propertyId;


	@Column
	private String name;

	@Column
	private String location;

	@Column
	private double cost;

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public Property() {
		super();
	}




	@Override
	public String toString() {
		return "Property [propertyId=" + propertyId + ", name=" + name + ", location=" + location + ", cost=" + cost
				+ ", customer=" + customer + "]";
	}




	@OneToOne(cascade=CascadeType.ALL)
	private Customer customer;

	public int getPropertyId() {
		return propertyId;
	}

	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}



	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}




}
