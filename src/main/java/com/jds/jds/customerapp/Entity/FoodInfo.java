package com.jds.jds.customerapp.Entity;

import com.jds.jds.customerapp.Model.MenuDepartmentId;

public class FoodInfo {

	private MenuDepartmentId id;
	private int price;
	private int quantity;
	private String foodName;
	private String image;
	
	public FoodInfo(){}

	public FoodInfo(MenuDepartmentId id, int price, int quantity, String foodName, String image) {
		this.id = id;
		this.price = price;
		this.quantity = quantity;
		this.foodName = foodName;
		this.image = image;
	}

	public MenuDepartmentId getId() {
		return id;
	}

	public void setId(MenuDepartmentId id) {
		this.id = id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}	
	
}
