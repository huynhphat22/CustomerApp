package com.jds.jds.customerapp.Dao;

import com.jds.jds.customerapp.Model.OrderDetail;
import com.jds.jds.customerapp.Model.OrderDetailId;

public interface OrderDetailDAO {
	public OrderDetail save(OrderDetail orderDetail);

	public OrderDetail update(OrderDetail orderDetail);

	public void delete(OrderDetailId id);
	
	public OrderDetail findById(OrderDetailId id);
}
