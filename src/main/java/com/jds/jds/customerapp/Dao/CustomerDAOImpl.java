package com.jds.jds.customerapp.Dao;

import java.util.Date;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jds.jds.customerapp.Model.Customer;

@Transactional
public class CustomerDAOImpl implements CustomerDAO {


	private SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Customer save(Customer customer) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		customer.setFlags(true);
		customer.setDateCreated(new Date());
		session.persist(customer);
		return customer;
	}

	@Override
	public Customer update(Customer customer) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(customer);
		return customer;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Customer customer = this.findById(id);
		if(customer != null) {
			customer.setFlags(false);
			session.update(customer);
		}
	}

	@Override
	public Customer findById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, id);
		return customer;
	}

	
	@Override
	public Customer findByPhoneNumber(String phoneNumber) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("from Customer c WHERE c.phoneNumber = :phoneNumber");
		query.setParameter("phoneNumber", phoneNumber);
		return (Customer) query.uniqueResult();
	}
	
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Iterable<Customer> findAll() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Iterable<Customer> list = session.createQuery("from Customer").list();
		return list;
	}

	

}
