package com.jds.jds.customerapp.Dao;

import com.jds.jds.customerapp.Model.MenuDepartment;
import com.jds.jds.customerapp.Model.MenuDepartmentId;

public interface MenuDepartmentDAO {
	
	public MenuDepartment save(MenuDepartment menuDepartment);

	public MenuDepartment update(MenuDepartment menuDepartment);

	public void delete(MenuDepartmentId id);

	public MenuDepartment findById(MenuDepartmentId id);

	public Iterable<MenuDepartment> findAll();

	public long count();
}
