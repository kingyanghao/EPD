package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonFormat;


public class paid_leave_statistics {

	private Integer psid;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm",timezone = "GMT+8")
	private Date start_time;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm",timezone = "GMT+8")
	private Date end_time;
	private String time_hour;
	private String p_remark;
	private String psid_leave_name;
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date create_date;

	private String role;//0可修改，1不可修改
	
	private List<paid_leave> paidLeaveList;
	
	
	
	public List<paid_leave> getPaidLeaveList() {
		return paidLeaveList;
	}

	public void setPaidLeaveList(List<paid_leave> paidLeaveList) {
		this.paidLeaveList = paidLeaveList;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public Integer getPsid() {
		return psid;
	}

	public void setPsid(Integer psid) {
		this.psid = psid;
	}

	public Date getStart_time() {
		return start_time;
	}

	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}

	public Date getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Date end_time) {
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

	@Override
	public String toString() {
		return "paid_leave_statistics [psid=" + psid + ", start_time=" + start_time + ", end_time=" + end_time
				+ ", time_hour=" + time_hour + ", p_remark=" + p_remark + ", psid_leave_name=" + psid_leave_name
				+ ", create_date=" + create_date + ", role=" + role + ", paidLeaveList=" + paidLeaveList + "]";
	}
	

	
}
