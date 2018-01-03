package com.jds.jds.customerapp.Dao;

import org.hibernate.Query;
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
	
	@Override
	public Iterable<OrderDetail> findByCustomerIdAndOrderId(int orderId, int customerId ) {
		// TODO Auto-generated method stub
		System.out.println("o " + orderId + "        ---- "+ customerId );
		Session session = this.sessionFactory.getCurrentSession();
		Iterable<OrderDetail> list = null;
		try{
			Query query = session.createQuery("Select od FROM OrderDetail od INNER JOIN OrderFood fo ON "
					+ "( fo.orderId = od.id.orderId  AND fo.orderId = :orderId AND fo.customerId = :customerId) ");
			query.setParameter("orderId", orderId);
			query.setParameter("customerId", customerId);
			
			
			
			list = query.list();
			for(OrderDetail o : list){
				System.out.println("quantity" + o.getQuantity());
			}
		}
		catch(Exception e){
			System.out.println("loi");
			e.printStackTrace();
		}
		
		return list;
	}
}
