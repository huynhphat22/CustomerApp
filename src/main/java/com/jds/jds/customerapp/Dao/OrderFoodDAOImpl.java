package com.jds.jds.customerapp.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jds.jds.customerapp.Model.OrderFood;

@Transactional
public class OrderFoodDAOImpl implements OrderFoodDAO {

	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public OrderFood save(OrderFood orderFood) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(orderFood);
		return orderFood;
		// TODO Auto-generated method stub
	}

	@Override
	public List<OrderFood> getListOrderFoodByCustomerId(int customerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		OrderFood orderFood = this.findById(id);
		if(orderFood != null) {
			orderFood.setFlags(false);
			session.update(orderFood);
		}
	}

	
	@Override
	public OrderFood findById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		OrderFood orderFood = session.get(OrderFood.class, id);
		return orderFood;
	}
	
	
	@Override
	public OrderFood update(OrderFood orderFood) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(orderFood);
		return orderFood;
	}
}
