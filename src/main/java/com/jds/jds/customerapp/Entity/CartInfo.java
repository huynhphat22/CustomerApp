package com.jds.jds.customerapp.Entity;

import java.util.List;

import com.jds.jds.customerapp.Model.OrderFood;

public class CartInfo {
	private List<FoodInfo> listFoodInfo;
	private OrderFood orderInfo;
	
	CartInfo(){
		
	}

	public CartInfo(List<FoodInfo> listFoodInfo, OrderFood orderInfo) {
		super();
		this.listFoodInfo = listFoodInfo;
		this.orderInfo = orderInfo;
	}

	public List<FoodInfo> getListFoodInfo() {
		return listFoodInfo;
	}

	public void setListFoodInfo(List<FoodInfo> listFoodInfo) {
		this.listFoodInfo = listFoodInfo;
	}

	public OrderFood getOrderInfo() {
		return orderInfo;
	}

	public void setOrderInfo(OrderFood orderInfo) {
		this.orderInfo = orderInfo;
	}
}
