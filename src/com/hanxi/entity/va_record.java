package com.hanxi.entity;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class va_record {

	private int va_id;
	private String va_no;
	private String va_name;
	private String va_worknum;
	private String va_create;
	private int num;
	private String year;
	
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getVa_id() {
		return va_id;
	}
	public void setVa_id(int va_id) {
		this.va_id = va_id;
	}
	public String getVa_no() {
		return va_no;
	}
	public void setVa_no(String va_no) {
		this.va_no = va_no;
	}
	public String getVa_name() {
		return va_name;
	}
	public void setVa_name(String va_name) {
		this.va_name = va_name;
	}
	public String getVa_worknum() {
		return va_worknum;
	}
	public void setVa_worknum(String va_worknum) {
		this.va_worknum = va_worknum;
	}
	public String getVa_create() {
		return va_create;
	}
	public void setVa_create(String va_create) {
		this.va_create = va_create;
	}
	@Override
	public String toString() {
		return "va_record [va_id=" + va_id + ", va_no=" + va_no + ", va_name=" + va_name + ", va_worknum=" + va_worknum
				+ ", va_create=" + va_create + "]";
	}
	
	
	
	
}
