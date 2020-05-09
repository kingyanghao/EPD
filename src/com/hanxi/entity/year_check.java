package com.hanxi.entity;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

public class year_check {

	private int year_id;
	private String y_01;
	private String y_02;
	private String y_03;
	private String y_04;
	private String bench_name;
	private String year;
	private String month;
	private String username;
	private Date create_time;
	
	//	分页，
	private int pageSize;//分页条数
	private int pageIndex;//页数
	public int getYear_id() {
		return year_id;
	}
	public void setYear_id(int year_id) {
		this.year_id = year_id;
	}
	public String getY_01() {
		return y_01;
	}
	public void setY_01(String y_01) {
		this.y_01 = y_01;
	}
	public String getY_02() {
		return y_02;
	}
	public void setY_02(String y_02) {
		this.y_02 = y_02;
	}
	public String getY_03() {
		return y_03;
	}
	public void setY_03(String y_03) {
		this.y_03 = y_03;
	}
	public String getY_04() {
		return y_04;
	}
	public void setY_04(String y_04) {
		this.y_04 = y_04;
	}
	public String getBench_name() {
		return bench_name;
	}
	public void setBench_name(String bench_name) {
		this.bench_name = bench_name;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	@Override
	public String toString() {
		return "year_check [year_id=" + year_id + ", y_01=" + y_01 + ", y_02=" + y_02 + ", y_03=" + y_03 + ", y_04="
				+ y_04 + ", bench_name=" + bench_name + ", year=" + year + ", month=" + month + ", username=" + username
				+ ", create_time=" + create_time + ", pageSize=" + pageSize + ", pageIndex=" + pageIndex + "]";
	}

}