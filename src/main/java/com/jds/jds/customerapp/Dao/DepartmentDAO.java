package com.jds.jds.customerapp.Dao;

import com.jds.jds.customerapp.Model.Department;

public interface DepartmentDAO {
	public Department save(Department department);
	
	public Department findById(int id);
	
	public Iterable<Department> findAll();
	
	
}
