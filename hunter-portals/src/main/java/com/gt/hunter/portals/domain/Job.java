package com.gt.hunter.portals.domain;

import java.io.Serializable;

import com.gt.hunter.portals.common.annotation.Column;

public class Job implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8070311796680471665L;
	@Column
	private String id;
	@Column
	private String companyId;
	@Column
	private String department;
	@Column
	private String post;
	@Column
	private String salary;
	@Column
	private String degree;
	@Column
	private String nature;
	@Column
	private String place;
	@Column
	private String experience;
	@Column
	private String publishTime;
	@Column
	private String status;
	
	private String company;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
}
