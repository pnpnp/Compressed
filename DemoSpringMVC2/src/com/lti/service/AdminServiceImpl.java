
package com.lti.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.dao.IAdminDao;
import com.lti.model.Customer;



@Service
@Transactional
public class AdminServiceImpl implements IAdminService{

	@Autowired
	private IAdminDao iAdminDao;


	public void setiAdminDao(IAdminDao iAdminDao) {
		this.iAdminDao = iAdminDao;
	}

	@Override
	public List<Customer> custlist() {

		return this.iAdminDao.custlist();
	}

	@Override
	public void acceptCust(int customerId, double loanAmount) {
		iAdminDao.acceptCust(customerId, loanAmount);
	}

	@Override
	public void rejectCust(int customerId) {
		iAdminDao.rejectCust(customerId);

	}

	@Override
	public List<Customer> fetchCustomerDetails(int customerId) {

		return iAdminDao.fetchCustomerDetails(customerId);
	}

	@Override
	public List<Customer> custlistpend() {
		return this.iAdminDao.custlistpend();
	}

	@Override
	public List<Customer> custlistaccept() {

		return this.iAdminDao.custlistaccept();
	}

	@Override
	public List<Customer> custlistreject() {

		return this.iAdminDao.custlistreject();
	}




}
