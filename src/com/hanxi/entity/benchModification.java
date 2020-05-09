package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class benchModification {

	private int bench_id;
	private String bench_name;
	private String dates;
	private List<daily_check> dailyList;
	private Date startMonth;//月的开始时间
	private Date endMonth;//月的开始时间
	public int getBench_id() {
		return bench_id;
	}
	public void setBench_id(int bench_id) {
		this.bench_id = bench_id;
	}
	public String getBench_name() {
		return bench_name;
	}
	public void setBench_name(String bench_name) {
		this.bench_name = bench_name;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public List<daily_check> getDailyList() {
		return dailyList;
	}
	public void setDailyList(List<daily_check> dailyList) {
		this.dailyList = dailyList;
	}
	public Date getStartMonth() {
		return startMonth;
	}
	public void setStartMonth(Date startMonth) {
		this.startMonth = startMonth;
	}
	public Date getEndMonth() {
		return endMonth;
	}
	public void setEndMonth(Date endMonth) {
		this.endMonth = endMonth;
	}
	@Override
	public String toString() {
		return "benchModification [bench_id=" + bench_id + ", bench_name=" + bench_name + ", dates=" + dates
				+ ", dailyList=" + dailyList + ", startMonth=" + startMonth + ", endMonth=" + endMonth + "]";
	}
	
	
	
	
	
}
