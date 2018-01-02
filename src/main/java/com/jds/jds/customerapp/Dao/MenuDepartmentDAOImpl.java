package com.jds.jds.customerapp.Dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.transaction.annotation.Transactional;

import com.jds.jds.customerapp.Model.MenuDepartment;
import com.jds.jds.customerapp.Model.MenuDepartmentId;

@Transactional
public class MenuDepartmentDAOImpl implements MenuDepartmentDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public MenuDepartment save(MenuDepartment menuDepartment) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(menuDepartment);
		return menuDepartment;
	}

	@Override
	public MenuDepartment update(MenuDepartment menuDepartment) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(menuDepartment);
		return menuDepartment;
	}

	@Override
	public void delete(MenuDepartmentId id) {
		// TODO Auto-generated method stub
		
		MenuDepartment menuDepartment = this.findById(id);
		if(menuDepartment != null) {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(menuDepartment);
		}
		
	}

	@Override
	public MenuDepartment findById(MenuDepartmentId id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		MenuDepartment menuDepartment = session.get(MenuDepartment.class, id);
		return menuDepartment;
	}

	@Override
	public Iterable<MenuDepartment> findAll() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Iterable<MenuDepartment> list = session.createQuery("From MenuDepartment").list();
		return list ;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteriaCount = session.createCriteria(MenuDepartment.class);
		criteriaCount.setProjection(Projections.rowCount());
		return (long) criteriaCount.uniqueResult();
	}
	
	@Override
	public long countByDepartmentIdAndCategoryId(int departmentId, int categoryId) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "SELECT count(*) FROM MenuDepartment md INNER JOIN Department d ON "
				+ "(d.departmentId = md.id.departmentId AND d.departmentId = " + departmentId + ")"
				+ "INNER JOIN Food f ON f.foodId = md.id.foodId INNER JOIN Category c ON "
				+ "(f.category.categoryId = c.categoryId AND c.categoryId = " + categoryId + ")";
		return (long)session.createQuery(hql).uniqueResult();
	}
	

	@Override
	public Iterable<MenuDepartment> findByDepartmentIdAndCategoryId(int departmentId, int categoryId, int page, String sort) {
		// TODO Auto-generated method stub
		int pageSize = 9;

		int start = (page - 1) * pageSize;
		Session session = this.sessionFactory.getCurrentSession();
		
		String hql = "SELECT md FROM MenuDepartment md INNER JOIN Department d ON "
				+ "(d.departmentId = md.id.departmentId AND d.departmentId = " + departmentId + ")"
				+ "INNER JOIN Food f ON f.foodId = md.id.foodId INNER JOIN Category c ON "
				+ "(f.category.categoryId = c.categoryId AND c.categoryId = " + categoryId + ")";
		
		Query query = session.createQuery(hql);
		query.setFirstResult(start);
		query.setMaxResults(pageSize);
		return query.list();
	}

	@Override
	public Iterable<MenuDepartment> searchByPriceInRange(int departmentId, int price, int page) {
		// TODO Auto-generated method stub
		int pageSize = 10;
		int start = (page - 1) * pageSize;
		Session session = this.sessionFactory.getCurrentSession();
		
		String hql = "SELECT md FROM MenuDepartment md WHERE md.id.departmentId = " + departmentId 
				+ "AND md.price < " + (price + 100000) + " AND md.price > " + (price - 100000) ;
		
		Query query = session.createQuery(hql);
		query.setFirstResult(start);
		query.setMaxResults(pageSize);
		return query.list();
	}

	@Override
	public Iterable<MenuDepartment> searchByFoodName(int departmentId, String foodName, int page) {
		// TODO Auto-generated method stub
		int pageSize = 10;
		int start = (page - 1) * pageSize;
		Session session = this.sessionFactory.getCurrentSession();
		
		String hql = "SELECT md FROM MenuDepartment md INNER JOIN Food f ON (md.id.departmentId = " + departmentId 
				+ " AND md.id.foodId = f.foodId ) WHERE f.foodName LIKE CONCAT('%', :foodName ,'%')";
		
		Query query = session.createQuery(hql);
		query.setParameter("foodName", foodName);
		query.setFirstResult(start);
		query.setMaxResults(pageSize);
		return query.list();
	}

	@Override
	public long countBySearchFoodName(int departmentId, String foodName) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "SELECT COUNT(*) FROM MenuDepartment md INNER JOIN Food f ON (md.id.departmentId = " + departmentId 
				+ " AND md.id.foodId = f.foodId) WHERE f.foodName LIKE CONCAT('%', :foodName ,'%')";
		Query query = session.createQuery(hql);
		query.setParameter("foodName", foodName);
		return (long)query.uniqueResult();
	}

	@Override
	public long countBySearchPriceInRange(int departmentId, int price) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "SELECT COUNT(*) FROM MenuDepartment md WHERE md.id.departmentId = " + departmentId 
				+ "AND md.price < " + (price + 100000) + " AND md.price > " + (price - 100000) ;
		return (long)session.createQuery(hql).uniqueResult();
	}
}
