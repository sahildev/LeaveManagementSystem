package com.proj.myapp;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "leaves")
public class Leaves {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int leaveId;
	int empId;
	String fromdate;
	String toDate;
	String Reason;

	String permission;

	public int getLeaveId() {
		return leaveId;
	}

	public Leaves() {

	}

	public Leaves(int empId, String fromdate, String toDate, String reason, String permission) {
		super();
		this.empId = empId;
		this.fromdate = fromdate;
		this.toDate = toDate;
		Reason = reason;

		this.permission = permission;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getToDate() {
		return toDate;
	}

	public void setToDate(String toDate) {
		this.toDate = toDate;
	}

	public String getReason() {
		return Reason;
	}

	public void setReason(String reason) {
		Reason = reason;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

}
