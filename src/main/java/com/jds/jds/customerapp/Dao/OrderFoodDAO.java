package com.jds.jds.customerapp.Dao;

import java.util.List;

import com.jds.jds.customerapp.Model.OrderFood;

public interface OrderFoodDAO {

	public OrderFood save(OrderFood orderFood);
	
	public List<OrderFood> getListOrderFoodByCustomerId(int customerId);
	
	public void delete(int id);
	
	OrderFood findById (int id);
	
	public OrderFood update(OrderFood orderFood);
	
	public Iterable<OrderFood> paginateOrderFood(int page, String sort);
	
	public long count();
	
	public long countByCustomerId(int customerId);
	
	public Iterable<OrderFood> paginateOrderFoodByCustomerId(int page, String sort, int customerId);
}
