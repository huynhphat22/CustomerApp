// default package
// Generated Dec 25, 2017 5:48:08 PM by Hibernate Tools 5.1.4.Final
package com.jds.jds.customerapp.Model;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * OrderDetailId generated by hbm2java
 */
@Embeddable
public class OrderDetailId  implements java.io.Serializable{

	private int orderId;
	private int foodId;

	public OrderDetailId() {
	}

	public OrderDetailId(int orderId, int foodId) {
		this.orderId = orderId;
		this.foodId = foodId;
	}

	@Column(name = "orderID", nullable = false)
	public int getOrderId() {
		return this.orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	@Column(name = "foodID", nullable = false)
	public int getFoodId() {
		return this.foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof OrderDetailId))
			return false;
		OrderDetailId castOther = (OrderDetailId) other;

		return (this.getOrderId() == castOther.getOrderId()) && (this.getFoodId() == castOther.getFoodId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getOrderId();
		result = 37 * result + this.getFoodId();
		return result;
	}

}
