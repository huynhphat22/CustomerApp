package com.jds.jds.customerapp.Dao;

import java.util.Map;

import com.jds.jds.customerapp.Model.Food;

public interface FoodDAO {
	
	public Food save(Food food);
	
	public Food update(Food food);

	public void delete(int id);

	public Food findById(int id);

	public Iterable<Food> findAll();

	public long count();

	public Map<Food,Integer> findByDepartmentIdAndCategoryId(int departmentId, int categoryId, int page, String sort);
}
