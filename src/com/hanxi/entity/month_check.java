package com.hanxi.entity;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

public class month_check {

	private int month_id;
	private String m_01;
	private String m_02;
	private String m_03;
	private String m_04;
	private String m_05;
	private String bench_name;
	private String year;
	private String month;
	private String username;
	private Date create_time;
	private String check_time;
	private Date check_time1;
	private Date startTime;
	private Date endTime;
	private String time;
	//	分页，
	private int pageSize;//分页条数
	private int pageIndex;//页数
	public int getMonth_id() {
		return month_id;
	}
	public void setMonth_id(int month_id) {
		this.month_id = month_id;
	}
	public String getM_01() {
		return m_01;
	}
	public void setM_01(String m_01) {
		this.m_01 = m_01;
	}
	public String getM_02() {
		return m_02;
	}
	public void setM_02(String m_02) {
		this.m_02 = m_02;
	}
	public String getM_03() {
		return m_03;
	}
	public void setM_03(String m_03) {
		this.m_03 = m_03;
	}
	public String getM_04() {
		return m_04;
	}
	public void setM_04(String m_04) {
		this.m_04 = m_04;
	}
	public String getM_05() {
		return m_05;
	}
	public void setM_05(String m_05) {
		this.m_05 = m_05;
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
	public String getCheck_time() {
		return check_time;
	}
	public void setCheck_time(String check_time) {
		this.check_time = check_time;
	}
	public Date getCheck_time1() {
		return check_time1;
	}
	public void setCheck_time1(Date check_time1) {
		this.check_time1 = check_time1;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
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
		return "month_check [month_id=" + month_id + ", m_01=" + m_01 + ", m_02=" + m_02 + ", m_03=" + m_03 + ", m_04="
				+ m_04 + ", m_05=" + m_05 + ", bench_name=" + bench_name + ", year=" + year + ", month=" + month
				+ ", , create_time=" + create_time + ", check_time=" + check_time + ", check_time1="
				+ check_time1 + ", startTime=" + startTime + ", endTime=" + endTime + ", time=" + time + ", pageSize="
				+ pageSize + ", pageIndex=" + pageIndex + "]";
	}
	
	
	



}
