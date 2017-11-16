package com.jds.jds.customerapp.Dao;

import org.hibernate.Criteria;
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

}
