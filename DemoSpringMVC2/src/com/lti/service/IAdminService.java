package com.lti.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lti.model.Customer;

@Service
public interface IAdminService {



	public List<Customer> custlist();


	public void rejectCust(int customerId);

	public List<Customer> fetchCustomerDetails(int customerId);

	public void acceptCust(int customerId, double loanAmount);

	public List<Customer> custlistpend();


	public List<Customer> custlistaccept();

	public List<Customer> custlistreject();

}