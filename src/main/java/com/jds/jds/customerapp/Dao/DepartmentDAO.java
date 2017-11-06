package com.jds.jds.customerapp.Dao;

import com.jds.jds.customerapp.Model.Department;

public interface DepartmentDAO {
	public Department save(Department department);
	
	public Department update(Department department);
	
	public void delete(int id);
	
	public Department findById(int id);
	
	public Iterable<Department> findAll();
	
	public Iterable<Department> paginateDepartment(int page, String sort);
	
	public long count();
}
