package com.hanxi.entity;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 处理分页 Created by ASUS on 2018/5/7
 * 
 * @Authod Grey Wolf
 */

public class paidLeavePage implements Serializable {

	private Integer page;
	private Integer limit;
	private Integer psid;
	private String start_time;
	private String end_time;
	private String time_hour;
	private String p_remark;
	private String psid_leave_name;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm",timezone = "GMT+8")
	private Date start_time1;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm",timezone = "GMT+8")
	private Date end_time1;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date create_date;

	private String role;//0可修改，1不可修改
	
	
	
	public Date getStart_time1() {
		return start_time1;
	}

	public void setStart_time1(Date start_time1) {
		this.start_time1 = start_time1;
	}

	public Date getEnd_time1() {
		return end_time1;
	}

	public void setEnd_time1(Date end_time1) {
		this.end_time1 = end_time1;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getPsid() {
		return psid;
	}

	public void setPsid(Integer psid) {
		this.psid = psid;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getTime_hour() {
		return time_hour;
	}

	public void setTime_hour(String time_hour) {
		this.time_hour = time_hour;
	}

	public String getP_remark() {
		return p_remark;
	}

	public void setP_remark(String p_remark) {
		this.p_remark = p_remark;
	}

	public String getPsid_leave_name() {
		return psid_leave_name;
	}

	public void setPsid_leave_name(String psid_leave_name) {
		this.psid_leave_name = psid_leave_name;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	


}
