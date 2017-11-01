package com.jds.jds.customerapp.Model;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name = "department")
public class Department {
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "departmentID", unique = true, nullable = false)
	private int departmentID;
	
	@Column(name = "departmentName", nullable = false, length = 100)
	private String departmentName;
	
	@Column(name = "address", nullable = false, length = 200)
	private String address;
	
	@Column(name = "phoneNumber", nullable = false, length = 20)
	private String phoneNumber;
	
	@Column(name = "numberOfTable", nullable = false)
	private int numberOfTable;
	
	@Column(name = "flags")
	private boolean flags;

	public Department() {}
	
	public Department(int departmentID, String departmentName, String address, String phoneNumber, int numberOfTable,
			boolean flags) {
		this.departmentID = departmentID;
		this.departmentName = departmentName;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.numberOfTable = numberOfTable;
		this.flags = flags;
	}

	public int getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getNumberOfTable() {
		return numberOfTable;
	}

	public void setNumberOfTable(int numberOfTable) {
		this.numberOfTable = numberOfTable;
	}

	public boolean isFlags() {
		return flags;
	}

	public void setFlags(boolean flags) {
		this.flags = flags;
	}

}
