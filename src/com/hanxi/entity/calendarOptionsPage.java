package com.hanxi.entity;

import java.io.Serializable;

/**
 * 处理分页 Created by ASUS on 2018/5/7
 * 
 * @Authod Grey Wolf
 */

public class calendarOptionsPage implements Serializable {

	private Integer page;
	private Integer limit;
	private String calendar_time;
	private String year;
	private String month;
	private String day;
	private String type;
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



}
