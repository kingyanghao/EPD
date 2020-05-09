package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class nozzleList {

	private String number;
	private String cylinder_no;
	private String ingector_no;
	private String injector_type;
	private String nozzle_no;
	private String nozzle_type;
	private String md;
	private String mf;
	private String work_time;
	private String remark;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCylinder_no() {
		return cylinder_no;
	}
	public void setCylinder_no(String cylinder_no) {
		this.cylinder_no = cylinder_no;
	}
	public String getIngector_no() {
		return ingector_no;
	}
	public void setIngector_no(String ingector_no) {
		this.ingector_no = ingector_no;
	}
	public String getInjector_type() {
		return injector_type;
	}
	public void setInjector_type(String injector_type) {
		this.injector_type = injector_type;
	}
	public String getNozzle_no() {
		return nozzle_no;
	}
	public void setNozzle_no(String nozzle_no) {
		this.nozzle_no = nozzle_no;
	}
	public String getNozzle_type() {
		return nozzle_type;
	}
	public void setNozzle_type(String nozzle_type) {
		this.nozzle_type = nozzle_type;
	}
	public String getMd() {
		return md;
	}
	public void setMd(String md) {
		this.md = md;
	}
	public String getMf() {
		return mf;
	}
	public void setMf(String mf) {
		this.mf = mf;
	}
	public String getWork_time() {
		return work_time;
	}
	public void setWork_time(String work_time) {
		this.work_time = work_time;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "nozzleList [number=" + number + ", cylinder_no=" + cylinder_no + ", ingector_no=" + ingector_no
				+ ", injector_type=" + injector_type + ", nozzle_no=" + nozzle_no + ", nozzle_type=" + nozzle_type
				+ ", md=" + md + ", mf=" + mf + ", work_time=" + work_time + ", remark=" + remark + "]";
	}
	
	
	
}
