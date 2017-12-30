package com.jds.jds.customerapp.Dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
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
		orderFood.setFlags(true);
		orderFood.setDateCreated(new Date());
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
	
	public long count() {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteriaCount = session.createCriteria(OrderFood.class);
		criteriaCount.setProjection(Projections.rowCount());
		return (long) criteriaCount.uniqueResult();
	}
	
	public Iterable<OrderFood> paginateOrderFood(int page, String sort) {

		int pageSize = 10;
		int start = (page - 1) * pageSize;
		
		Session session = this.sessionFactory.getCurrentSession();

		Criteria criteria = session.createCriteria(OrderFood.class);
		criteria.setFirstResult(start);
		criteria.setMaxResults(pageSize);
		criteria.addOrder(Order.asc(sort));

		Iterable<OrderFood> list = criteria.list();
		return list;
	}
	
	public long countByCustomerId(int customerId) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteriaCount = session.createCriteria(OrderFood.class).add(Restrictions.eq("customerId", customerId));
		criteriaCount.setProjection(Projections.rowCount());
		return (long) criteriaCount.uniqueResult();
	}

	public Iterable<OrderFood> paginateOrderFoodByCustomerId(int page, String sort, int customerId) {

		int pageSize = 10;
		int start = (page - 1) * pageSize;
		
		Session session = this.sessionFactory.getCurrentSession();

		Criteria criteria = session.createCriteria(OrderFood.class).add(Restrictions.eq("customerId", customerId));
		criteria.setFirstResult(start);
		criteria.setMaxResults(pageSize);
		criteria.addOrder(Order.asc(sort));

		Iterable<OrderFood> list = criteria.list();
		return list;
	}
}
