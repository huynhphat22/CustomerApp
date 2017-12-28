package com.jds.jds.customerapp.Dao;

import java.util.List;

import com.jds.jds.customerapp.Model.OrderFood;

public interface OrderFoodDAO {

	public OrderFood save(OrderFood orderFood);
	
	public List<OrderFood> getListOrderFoodByCustomerId(int customerId);
	
	public void delete(int id);
	
	OrderFood findById (int id);
	
	
	public OrderFood update(OrderFood orderFood);
}