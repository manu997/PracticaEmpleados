package clases;

public class Empleado {
	private float id, manager, salary, commission, department;
	private String name, job, hireDate;
	
	public Empleado(float id, float manager, float salary, float commission, 
			float department, String name, String job, String hireDate) {
		this.id = id;
		this.manager = manager;
		this.salary = salary;
		this.commission = commission;
		this.department = department;
		this.name = name;
		this.job = job;
		this.hireDate = hireDate;
	}
	
	public float getId() {
		return id;
	}
	public void setId(float id) {
		this.id = id;
	}
	public float getManager() {
		return manager;
	}
	public void setManager(float manager) {
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
	public float getDepartment() {
		return department;
	}
	public void setDepartment(float department) {
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
	public String getHireDate() {
		return hireDate;
	}
	public void setHireDate(String hireDate) {
		this.hireDate = hireDate;
	}
	
}