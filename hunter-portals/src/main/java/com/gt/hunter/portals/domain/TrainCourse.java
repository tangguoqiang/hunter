package com.gt.hunter.portals.domain;

import java.io.Serializable;

import com.gt.hunter.portals.common.annotation.Column;

public class TrainCourse implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2436896485571597913L;
	
	@Column
	private String id;
	@Column
	private String stageId;
	@Column
	private String prjId;
	@Column
	private String title;
	@Column
	private String costTime;
	@Column
	private String url;
	@Column
	private String img;
	@Column
	private String orderNo;
	@Column
	private String status;
	@Column
	private String type;
	@Column
	private String price;
	
	private String stage;
	private String stageDes;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStageId() {
		return stageId;
	}
	public void setStageId(String stageId) {
		this.stageId = stageId;
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
	public String getCostTime() {
		return costTime;
	}
	public void setCostTime(String costTime) {
		this.costTime = costTime;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStage() {
		return stage;
	}
	public void setStage(String stage) {
		this.stage = stage;
	}
	public String getStageDes() {
		return stageDes;
	}
	public void setStageDes(String stageDes) {
		this.stageDes = stageDes;
	}
}
