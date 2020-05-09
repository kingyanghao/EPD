package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonFormat;


public class calendarOptions {

	private Integer coid;
	private String calendar_time;
	private String year;
	private String month;
	private String day;
	private String type;
	private String c_type;
	private String c_week;
	private String week;
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date create_time;

	
	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public String getC_week() {
		return c_week;
	}

	public void setC_week(String c_week) {
		this.c_week = c_week;
	}

	public Integer getCoid() {
		return coid;
	}

	public void setCoid(Integer coid) {
		this.coid = coid;
	}

	public String getCalendar_time() {
		return calendar_time;
	}

	public void setCalendar_time(String calendar_time) {
		this.calendar_time = calendar_time;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	@Override
	public String toString() {
		return "calendarOptions [coid=" + coid + ", calendar_time=" + calendar_time + ", year=" + year + ", month="
				+ month + ", day=" + day + ", type=" + type + ", create_time=" + create_time + "]";
	}

	
}
