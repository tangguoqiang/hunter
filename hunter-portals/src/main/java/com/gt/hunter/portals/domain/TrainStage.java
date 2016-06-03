package com.gt.hunter.portals.domain;

import java.util.List;

import com.gt.hunter.portals.common.annotation.Column;

public class TrainStage {

	@Column
	private String id;
	@Column
	private String prjId;
	@Column
	private String title;
	@Column
	private String des;
	@Column
	private String orderNo;
	@Column
	private String status;
	
	private List<TrainCourse> courses;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPrjId() {
		return prjId;
	}

	public void setPrjId(String prjId) {
		this.prjId = prjId;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<TrainCourse> getCourses() {
		return courses;
	}

	public void setCourses(List<TrainCourse> courses) {
		this.courses = courses;
	}
}
