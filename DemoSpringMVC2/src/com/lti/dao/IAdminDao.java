package com.lti.dao;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.lti.model.Customer;



@Repository
public interface IAdminDao {
	
	public List<Customer> custlist();
	
	
	public void acceptCust(int customerId, double loanAmount);
	
	public void rejectCust(int customerId);
	
	public List<Customer> fetchCustomerDetails(int customerId);
	
	
	

	public List<Customer> custlistpend();

	 public List<Customer> custlistaccept();

	public List<Customer> custlistreject();
	}
