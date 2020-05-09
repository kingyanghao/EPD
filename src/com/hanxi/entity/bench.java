package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class bench {

	private int bench_id;
	private String bench_name;
	private List<scheduling_record> schedulinglist;
	private String scheduling_date;
	
	public String getScheduling_date() {
		return scheduling_date;
	}
	public void setScheduling_date(String scheduling_date) {
		this.scheduling_date = scheduling_date;
	}
	public List<scheduling_record> getSchedulinglist() {
		return schedulinglist;
	}
	public void setSchedulinglist(List<scheduling_record> schedulinglist) {
		this.schedulinglist = schedulinglist;
	}
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
	
	
	
}
