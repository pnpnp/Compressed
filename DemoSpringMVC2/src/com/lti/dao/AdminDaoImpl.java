package com.lti.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.model.Customer;


@Transactional
@Repository
public class AdminDaoImpl implements IAdminDao
{

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List<Customer> custlist()
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String query="from Customer";
		Query q=session.createQuery(query);
		List<Customer> custlist=q.list();
		System.out.println("customerLISt"+custlist);
		tx.commit();
		session.close();
		return custlist;
	}


	@Override
	public void acceptCust(int customerId, double loanAmount)
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String query="update Customer c set c.loanStatus='ACCEPTED', c.balance=:loanAmount where c.customerId=:customerId";
		Query q=session.createQuery(query);	
		q.setInteger("customerId", customerId);
		q.setDouble("loanAmount", loanAmount);
		q.executeUpdate();
		tx.commit();


	}




	@Override
	public void rejectCust(int customerId) {
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();

		String query="update Customer c set c.loanStatus='REJECTED' where c.customerId=:customerId";
		Query q=session.createQuery(query);
		q.setInteger("customerId", customerId);

		q.executeUpdate();
		tx.commit();
		session.close();

	}


	@Override
	public List<Customer> fetchCustomerDetails(int customerId) {
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String query="from Customer c where c.customerId=:customerId";
		Query q=session.createQuery(query);
		q.setInteger("customerId", customerId);
		List<Customer> custlist=q.list();

		tx.commit();
		session.close();
		return custlist;

	}

	@Override
	public List<Customer> custlistpend()
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String query="from Customer c where c.loanStatus='PENDING'";
		Query q=session.createQuery(query);
		List<Customer> custlist=q.list();

		tx.commit();
		session.close();
		return custlist;
	}




	@Override
	public List<Customer> custlistaccept()
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String query="from Customer c where c.loanStatus='ACCEPTED'";
		Query q=session.createQuery(query);
		List<Customer> custlist=q.list();

		tx.commit();
		session.close();
		return custlist;
	}


	@Override
	public List<Customer> custlistreject()
	{
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String query="from Customer c where c.loanStatus='REJECTED'";
		Query q=session.createQuery(query);
		List<Customer> custlist=q.list();

		tx.commit();
		session.close();
		return custlist;
	}



}