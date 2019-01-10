package clases;

import java.math.BigDecimal;
import java.sql.Date;

public class Empleado {
	private BigDecimal id, manager;
	private float salary, commission;
	private String name, job, department;
	private Date hiredate;
	
	public Empleado(BigDecimal id, String name, String job, BigDecimal manager, Date hiredate, 
			float salary, float commission, String department) {
		this.id = id;
		this.manager = manager;
		this.salary = salary;
		this.commission = commission;
		this.department = department;
		this.name = name;
		this.job = job;
		this.hiredate = hiredate;
	}
	
	public BigDecimal getId() {
		return id;
	}
	public void setId(BigDecimal id) {
		this.id = id;
	}
	public BigDecimal getManager() {
		return manager;
	}
	public void setManager(BigDecimal manager) {
		this.manager = manager;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public float getCommission() {
		return commission;
	}
	public void setCommission(float commission) {
		this.commission = commission;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	
}