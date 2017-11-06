package com.jds.jds.customerapp.Dao;

import com.jds.jds.customerapp.Model.Category;

public interface CategoryDAO {
public Category save(Category category);
	
	public Category update(Category category);
	
	public void delete(int id);
	
	public Category findById(int id);
	
	public Iterable<Category> findAll();
	
	public Iterable<Category> paginateCategory(int page, String sort);
	
	public long count();
	
	public Iterable<Category> findCategoriesByDepartmentId(int departmentId);
}
