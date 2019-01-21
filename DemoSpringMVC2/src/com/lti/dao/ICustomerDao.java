package com.lti.dao;

import org.springframework.stereotype.Repository;

import com.lti.model.Customer;

@Repository
public interface ICustomerDao {

	public void addCustomer(Customer customer);
	
	public boolean verifyUser(String emailId, String password);
	
	
	
	public Customer getCustomer(String emailId, String password);
}
