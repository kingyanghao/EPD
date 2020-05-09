package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonFormat;


public class paid_leave {

	private Integer paid;
	private String paid_leave_day;
	private String paid_leave_start;
	private String paid_leave_end;
	private String paid_leave_time;
	private String paid_leave_week;
	private String paid_leave_month;
	private String paid_leave_remark;
	private Integer wid;
	private String paid_leave_name;
	private String paid_leave_num;
	private String paid_leave_year;
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date paid_leave_create;
	private String role;
	
	//加班统计数据的处理
	private String harmonious;//加班时间
	private String dates;//日
	
	
	
	public String getHarmonious() {
		return harmonious;
	}
	public void setHarmonious(String harmonious) {
		this.harmonious = harmonious;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public Integer getPaid() {
		return paid;
	}
	public void setPaid(Integer paid) {
		this.paid = paid;
	}
	public String getPaid_leave_day() {
		return paid_leave_day;
	}
	public void setPaid_leave_day(String paid_leave_day) {
		this.paid_leave_day = paid_leave_day;
	}
	public String getPaid_leave_start() {
		return paid_leave_start;
	}
	public void setPaid_leave_start(String paid_leave_start) {
		this.paid_leave_start = paid_leave_start;
	}
	public String getPaid_leave_end() {
		return paid_leave_end;
	}
	public void setPaid_leave_end(String paid_leave_end) {
		this.paid_leave_end = paid_leave_end;
	}
	public String getPaid_leave_time() {
		return paid_leave_time;
	}
	public void setPaid_leave_time(String paid_leave_time) {
		this.paid_leave_time = paid_leave_time;
	}
	public String getPaid_leave_week() {
		return paid_leave_week;
	}
	public void setPaid_leave_week(String paid_leave_week) {
		this.paid_leave_week = paid_leave_week;
	}
	public String getPaid_leave_month() {
		return paid_leave_month;
	}
	public void setPaid_leave_month(String paid_leave_month) {
		this.paid_leave_month = paid_leave_month;
	}
	public String getPaid_leave_remark() {
		return paid_leave_remark;
	}
	public void setPaid_leave_remark(String paid_leave_remark) {
		this.paid_leave_remark = paid_leave_remark;
	}
	public Integer getWid() {
		return wid;
	}
	public void setWid(Integer wid) {
		this.wid = wid;
	}
	public String getPaid_leave_name() {
		return paid_leave_name;
	}
	public void setPaid_leave_name(String paid_leave_name) {
		this.paid_leave_name = paid_leave_name;
	}
	public String getPaid_leave_num() {
		return paid_leave_num;
	}
	public void setPaid_leave_num(String paid_leave_num) {
		this.paid_leave_num = paid_leave_num;
	}
	public Date getPaid_leave_create() {
		return paid_leave_create;
	}
	public void setPaid_leave_create(Date paid_leave_create) {
		this.paid_leave_create = paid_leave_create;
	}
	
	
	public String getPaid_leave_year() {
		return paid_leave_year;
	}
	public void setPaid_leave_year(String paid_leave_year) {
		this.paid_leave_year = paid_leave_year;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "paid_leave [paid=" + paid + ", paid_leave_day=" + paid_leave_day + ", paid_leave_start="
				+ paid_leave_start + ", paid_leave_end=" + paid_leave_end + ", paid_leave_time=" + paid_leave_time
				+ ", paid_leave_week=" + paid_leave_week + ", paid_leave_month=" + paid_leave_month
				+ ", paid_leave_remark=" + paid_leave_remark + ", wid=" + wid + ", paid_leave_name=" + paid_leave_name
				+ ", paid_leave_num=" + paid_leave_num + ", paid_leave_year=" + paid_leave_year + ", paid_leave_create="
				+ paid_leave_create + ", role=" + role + ", harmonious=" + harmonious + ", dates=" + dates
				+ ", getHarmonious()=" + getHarmonious() + ", getDates()=" + getDates() + ", getPaid()=" + getPaid()
				+ ", getPaid_leave_day()=" + getPaid_leave_day() + ", getPaid_leave_start()=" + getPaid_leave_start()
				+ ", getPaid_leave_end()=" + getPaid_leave_end() + ", getPaid_leave_time()=" + getPaid_leave_time()
				+ ", getPaid_leave_week()=" + getPaid_leave_week() + ", getPaid_leave_month()=" + getPaid_leave_month()
				+ ", getPaid_leave_remark()=" + getPaid_leave_remark() + ", getWid()=" + getWid()
				+ ", getPaid_leave_name()=" + getPaid_leave_name() + ", getPaid_leave_num()=" + getPaid_leave_num()
				+ ", getPaid_leave_create()=" + getPaid_leave_create() + ", getPaid_leave_year()="
				+ getPaid_leave_year() + ", getRole()=" + getRole() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	

	
}
