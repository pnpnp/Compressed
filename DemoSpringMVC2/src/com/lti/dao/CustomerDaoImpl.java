package com.lti.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.model.Customer;
import com.sun.media.jfxmedia.logging.Logger;


@Transactional
@Repository
public class CustomerDaoImpl implements ICustomerDao {


	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}





	@Override
	public void addCustomer(Customer customer) {
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();

		customer.setLoanStatus("PENDING");
		session.save(customer);

		tx.commit();
		session.close();

	}

	@Override
	public boolean verifyUser(String emailId, String password) {
		Session session = this.sessionFactory.openSession();


		String query="select emailId, password from Customer a where a.emailId=:emailId and a.password=:password";

		Query q=session.createQuery(query);
		q.setString("emailId", emailId);
		q.setString("password", password);
		List<Customer> l=q.list();

		if(l.size()==0)
		{
			return false;
		}
		session.close();
		return true;

	}


	@Override
	public Customer getCustomer(String emailId, String password) {
		Session session = this.sessionFactory.openSession();
		String query = "from Customer a where a.emailId=:emailId and a.password=:password";
		Query q = session.createQuery(query);
		q.setString("emailId", emailId);
		q.setString("password", password);
		List<Customer> l=q.list();

		if (l.size() == 0) {
			return null;
		}
		Customer customer = (Customer) l.get(0);
		session.close();
		return customer;
	}
}





