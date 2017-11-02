package com.jds.jds.customerapp.Model;


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * OrderFood generated by hbm2java
 */
@Entity
@Table(name = "order_food", catalog = "restaurant")
public class OrderFood implements java.io.Serializable {

	private Integer orderId;
	private int departmentId;
	private int customerId;
	private String orderType;
	private String status;
	private Date dateCreated;
	private Date dateDelivery;
	private String addressDelivery;
	private Boolean flags;

	public OrderFood() {
	}

	public OrderFood(int departmentId, int customerId, Date dateCreated, String addressDelivery) {
		this.departmentId = departmentId;
		this.customerId = customerId;
		this.dateCreated = dateCreated;
		this.addressDelivery = addressDelivery;
	}

	public OrderFood(int departmentId, int customerId, String orderType, String status, Date dateCreated,
			Date dateDelivery, String addressDelivery, Boolean flags) {
		this.departmentId = departmentId;
		this.customerId = customerId;
		this.orderType = orderType;
		this.status = status;
		this.dateCreated = dateCreated;
		this.dateDelivery = dateDelivery;
		this.addressDelivery = addressDelivery;
		this.flags = flags;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "orderID", unique = true, nullable = false)
	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	@Column(name = "departmentID", nullable = false)
	public int getDepartmentId() {
		return this.departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	@Column(name = "customerID", nullable = false)
	public int getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	@Column(name = "orderType", length = 9)
	public String getOrderType() {
		return this.orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	@Column(name = "status", length = 60)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dateCreated", nullable = false, length = 19)
	public Date getDateCreated() {
		return this.dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dateDelivery", length = 19)
	public Date getDateDelivery() {
		return this.dateDelivery;
	}

	public void setDateDelivery(Date dateDelivery) {
		this.dateDelivery = dateDelivery;
	}

	@Column(name = "addressDelivery", nullable = false, length = 200)
	public String getAddressDelivery() {
		return this.addressDelivery;
	}

	public void setAddressDelivery(String addressDelivery) {
		this.addressDelivery = addressDelivery;
	}

	@Column(name = "flags")
	public Boolean getFlags() {
		return this.flags;
	}

	public void setFlags(Boolean flags) {
		this.flags = flags;
	}

}
