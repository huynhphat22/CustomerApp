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
 * Payment generated by hbm2java
 */
@Entity
@Table(name = "payment", catalog = "restaurant")
public class Payment {

	private Integer paymentId;
	private int orderId;
	private int totalPrice;
	private String status;
	private Date dateOfCreated;
	private Boolean flags;

	public Payment() {
	}

	public Payment(int orderId, int totalPrice, Date dateOfCreated) {
		this.orderId = orderId;
		this.totalPrice = totalPrice;
		this.dateOfCreated = dateOfCreated;
	}

	public Payment(int orderId, int totalPrice, String status, Date dateOfCreated, Boolean flags) {
		this.orderId = orderId;
		this.totalPrice = totalPrice;
		this.status = status;
		this.dateOfCreated = dateOfCreated;
		this.flags = flags;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "paymentID", unique = true, nullable = false)
	public Integer getPaymentId() {
		return this.paymentId;
	}

	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}

	@Column(name = "orderID", nullable = false)
	public int getOrderId() {
		return this.orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	@Column(name = "totalPrice", nullable = false)
	public int getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Column(name = "status", length = 60)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dateOfCreated", nullable = false, length = 19)
	public Date getDateOfCreated() {
		return this.dateOfCreated;
	}

	public void setDateOfCreated(Date dateOfCreated) {
		this.dateOfCreated = dateOfCreated;
	}

	@Column(name = "flags")
	public Boolean getFlags() {
		return this.flags;
	}

	public void setFlags(Boolean flags) {
		this.flags = flags;
	}

}