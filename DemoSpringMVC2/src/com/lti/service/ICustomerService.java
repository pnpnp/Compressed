package com.lti.service;

import org.springframework.stereotype.Service;

import com.lti.model.Customer;

@Service
public interface ICustomerService {

	public void addCustomer(Customer customer);
	
	
	public boolean verifyUser(String emailId, String password);
	
	
	public Customer getCustomer(String emailId, String password);
	
	
}
