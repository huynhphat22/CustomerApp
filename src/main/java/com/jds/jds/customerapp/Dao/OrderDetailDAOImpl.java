package com.jds.jds.customerapp.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jds.jds.customerapp.Model.OrderDetail;
import com.jds.jds.customerapp.Model.OrderDetailId;

@Transactional
public class OrderDetailDAOImpl implements OrderDetailDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public OrderDetail save(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(orderDetail);
		return orderDetail;
	}

	@Override
	public OrderDetail update(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(orderDetail);
		return orderDetail;
	}

	@Override
	public void delete(OrderDetailId id) {
		// TODO Auto-generated method stub
		
		OrderDetail orderDetail = this.findById(id);
		if(orderDetail != null) {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(orderDetail);
		}
		
	}

	@Override
	public OrderDetail findById(OrderDetailId id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		OrderDetail orderDetail = session.get(OrderDetail.class, id);
		return orderDetail;
	}
}
