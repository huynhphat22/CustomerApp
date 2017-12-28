package com.jds.jds.customerapp.Dao;

import com.jds.jds.customerapp.Model.Customer;

public interface CustomerDAO {

	public Customer save(Customer customer);
	
	public Customer update(Customer customer);
	
	public void delete(int id);
	
	public Customer findById(int id);
	
	public Iterable<Customer> findAll();
	
	public Customer findByPhoneNumber(String phoneNumber);
}
