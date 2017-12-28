// default package
// Generated Dec 25, 2017 5:48:08 PM by Hibernate Tools 5.1.4.Final
package com.jds.jds.customerapp.Model;
import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * DateRevenue generated by hbm2java
 */
@Entity
@Table(name = "date_revenue", catalog = "restaurant")
public class DateRevenue {

	private DateRevenueId id;
	private String typeOfRevenue;
	private long price;
	private String note;
	private Date dateCreated;
	private Boolean flags;

	public DateRevenue() {
	}

	public DateRevenue(DateRevenueId id, long price, Date dateCreated) {
		this.id = id;
		this.price = price;
		this.dateCreated = dateCreated;
	}

	public DateRevenue(DateRevenueId id, String typeOfRevenue, long price, String note, Date dateCreated,
			Boolean flags) {
		this.id = id;
		this.typeOfRevenue = typeOfRevenue;
		this.price = price;
		this.note = note;
		this.dateCreated = dateCreated;
		this.flags = flags;
	}

	@EmbeddedId

	@AttributeOverrides({
			@AttributeOverride(name = "departmentId", column = @Column(name = "departmentID", nullable = false)),
			@AttributeOverride(name = "dateOfRevenue", column = @Column(name = "dateOfRevenue", nullable = false, length = 19)) })
	public DateRevenueId getId() {
		return this.id;
	}

	public void setId(DateRevenueId id) {
		this.id = id;
	}

	@Column(name = "typeOfRevenue", length = 60)
	public String getTypeOfRevenue() {
		return this.typeOfRevenue;
	}

	public void setTypeOfRevenue(String typeOfRevenue) {
		this.typeOfRevenue = typeOfRevenue;
	}

	@Column(name = "price", nullable = false)
	public long getPrice() {
		return this.price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	@Column(name = "note", length = 300)
	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "dateCreated", nullable = false, length = 10)
	public Date getDateCreated() {
		return this.dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	@Column(name = "flags")
	public Boolean getFlags() {
		return this.flags;
	}

	public void setFlags(Boolean flags) {
		this.flags = flags;
	}

}
