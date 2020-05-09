package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonFormat;


public class scheduling_record {

	private int scheduling_id;
	private String scheduling_kb;
	private String scheduling_va;
	private String work_overtime;
	private String workers;
	private String start_time;
	private String end_time;
	private String scheduling_status;
	private String close_time;
	private double starthours;
	private double endhours;
	private  String scheduling_date;
	private  String scheduling_hours;//paidanshichang
	private  String bench_name;
	private List<scheduling_record> scheduling_recordList;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone="GMT+8")
	private  Date scheduling_day;
	private  String year;
	private  String month;
	private  String week;
	
	private double workhours;//工作日统计
	private double overtimehours;//加班统计
	
	//加班统计数据的处理
	private String harmonious;//加班时间
	private String dates;//日
	
	private String typeOrder;//订单类型
	private String order_placer;//创建人
	
	
	
	public String getOrder_placer() {
		return order_placer;
	}
	public void setOrder_placer(String order_placer) {
		this.order_placer = order_placer;
	}
	public String getTypeOrder() {
		return typeOrder;
	}
	public void setTypeOrder(String typeOrder) {
		this.typeOrder = typeOrder;
	}
	public double getWorkhours() {
		return workhours;
	}
	public void setWorkhours(double workhours) {
		this.workhours = workhours;
	}
	public double getOvertimehours() {
		return overtimehours;
	}
	public void setOvertimehours(double overtimehours) {
		this.overtimehours = overtimehours;
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
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
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
	public Date getScheduling_day() {
		return scheduling_day;
	}
	public void setScheduling_day(Date scheduling_day) {
		this.scheduling_day = scheduling_day;
	}
	public List<scheduling_record> getScheduling_recordList() {
		return scheduling_recordList;
	}
	public void setScheduling_recordList(List<scheduling_record> scheduling_recordList) {
		this.scheduling_recordList = scheduling_recordList;
	}
	public String getBench_name() {
		return bench_name;
	}
	public void setBench_name(String bench_name) {
		this.bench_name = bench_name;
	}
	public String getScheduling_hours() {
		return scheduling_hours;
	}
	public void setScheduling_hours(String scheduling_hours) {
		this.scheduling_hours = scheduling_hours;
	}
	public String getScheduling_date() {
		return scheduling_date;
	}
	public void setScheduling_date(String scheduling_date) {
		this.scheduling_date = scheduling_date;
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
	
	
	public double getStarthours() {
		return starthours;
	}
	public void setStarthours(double starthours) {
		this.starthours = starthours;
	}
	public double getEndhours() {
		return endhours;
	}
	public void setEndhours(double endhours) {
		this.endhours = endhours;
	}
	public int getScheduling_id() {
		return scheduling_id;
	}
	public void setScheduling_id(int scheduling_id) {
		this.scheduling_id = scheduling_id;
	}
	public String getScheduling_kb() {
		return scheduling_kb;
	}
	public void setScheduling_kb(String scheduling_kb) {
		this.scheduling_kb = scheduling_kb;
	}
	public String getScheduling_va() {
		return scheduling_va;
	}
	public void setScheduling_va(String scheduling_va) {
		this.scheduling_va = scheduling_va;
	}
	public String getWork_overtime() {
		return work_overtime;
	}
	public void setWork_overtime(String work_overtime) {
		this.work_overtime = work_overtime;
	}
	public String getWorkers() {
		return workers;
	}
	public void setWorkers(String workers) {
		this.workers = workers;
	}
	
	public String getScheduling_status() {
		return scheduling_status;
	}
	public void setScheduling_status(String scheduling_status) {
		this.scheduling_status = scheduling_status;
	}
	public String getClose_time() {
		return close_time;
	}
	public void setClose_time(String close_time) {
		this.close_time = close_time;
	}
	@Override
	public String toString() {
		return "scheduling_record [scheduling_id=" + scheduling_id + ", scheduling_kb=" + scheduling_kb
				+ ", scheduling_va=" + scheduling_va + ", work_overtime=" + work_overtime + ", workers=" + workers
				+ ", start_time=" + start_time + ", end_time=" + end_time + ", scheduling_status=" + scheduling_status
				+ ", close_time=" + close_time + ", starthours=" + starthours + ", endhours=" + endhours
				+ ", scheduling_date=" + scheduling_date + ", scheduling_hours=" + scheduling_hours + ", bench_name="
				+ bench_name + ", scheduling_recordList=" + scheduling_recordList + ", scheduling_day=" + scheduling_day
				+ ", year=" + year + ", month=" + month + ", week=" + week + ", workhours=" + workhours
				+ ", overtimehours=" + overtimehours + ", harmonious=" + harmonious + ", dates=" + dates
				+ ", typeOrder=" + typeOrder + ", order_placer=" + order_placer + "]";
	}


	
	
	
	
}
