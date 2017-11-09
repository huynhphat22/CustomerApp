package com.jds.jds.customerapp.Dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.jds.jds.customerapp.Model.Category;

@Transactional
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	private SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Category save(Category category) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(category);
		return category;
	}

	@Override
	public Category update(Category category) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(category);
		return category;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Category category = this.findById(id);
		if(category != null) {
			session.delete(category);
		}
	}

	@Override
	public Category findById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Category category = session.get(Category.class, id);
		return category;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Iterable<Category> findAll() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Iterable<Category> list = session.createQuery("from Category").list();
		return list;
	}

	@Override
	public Iterable<Category> paginateCategory(int page, String sort) {
		// TODO Auto-generated method stub
		int pageSize = 10;
		int start = (page - 1) * pageSize;
		
		Session session = this.sessionFactory.getCurrentSession();

		Criteria criteria = session.createCriteria(Category.class);
		criteria.setFirstResult(start);
		criteria.setMaxResults(pageSize);
		criteria.addOrder(Order.asc(sort));

		Iterable<Category> list = criteria.list();
		return list;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteriaCount = session.createCriteria(Category.class);
		criteriaCount.setProjection(Projections.rowCount());
		return (long) criteriaCount.uniqueResult();
	}

	@Override
	public Iterable<Category> findCategoriesByDepartmentId(int departmentId) {
		// TODO Auto-generated method stub
		
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "SELECT DISTINCT c FROM Category c INNER JOIN Food f ON c.categoryId = f.categoryId "
				+ "INNER JOIN MenuDepartment md ON (f.foodId = md.id.foodId and md.id.departmentId = " + departmentId +  ")";
		Iterable<Category> list = session.createQuery(hql).list();
		return list;
	}

}
