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
	
	public long countByDepartmentIdAndCategoryId(int departmentId, int categoryId);
	
	public long countBySearchFoodName(int departmentId, String foodName);
	
	public long countBySearchPriceInRange(int departmentId, int price);
	
	public Iterable<MenuDepartment> findByDepartmentIdAndCategoryId(int departmentId, int categoryId, int page, String sort);
	
	public Iterable<MenuDepartment> searchByPriceInRange(int departmentId, int price, int page);
	
	public Iterable<MenuDepartment> searchByFoodName(int departmentId, String foodName, int page);
}
