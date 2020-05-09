package com.hanxi.entity;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class kb_record {

	private int kb_id;
	private String kb_no;
	private String kb_name;
	private String kb_status;
	private String create_time;
	private String kb_account;
	private int kb_num;
	private String kb_year;
	private String kb_va;
	
	public int getKb_id() {
		return kb_id;
	}
	public void setKb_id(int kb_id) {
		this.kb_id = kb_id;
	}
	public String getKb_no() {
		return kb_no;
	}
	public void setKb_no(String kb_no) {
		this.kb_no = kb_no;
	}
	public String getKb_name() {
		return kb_name;
	}
	public void setKb_name(String kb_name) {
		this.kb_name = kb_name;
	}
	public String getKb_status() {
		return kb_status;
	}
	public void setKb_status(String kb_status) {
		this.kb_status = kb_status;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public String getKb_account() {
		return kb_account;
	}
	public void setKb_account(String kb_account) {
		this.kb_account = kb_account;
	}
	public int getKb_num() {
		return kb_num;
	}
	public void setKb_num(int kb_num) {
		this.kb_num = kb_num;
	}
	public String getKb_year() {
		return kb_year;
	}
	public void setKb_year(String kb_year) {
		this.kb_year = kb_year;
	}
	
	
	
	public String getKb_va() {
		return kb_va;
	}
	public void setKb_va(String kb_va) {
		this.kb_va = kb_va;
	}
	@Override
	public String toString() {
		return "kb_record [kb_id=" + kb_id + ", kb_no=" + kb_no + ", kb_name=" + kb_name + ", kb_status=" + kb_status
				+ ", create_time=" + create_time + ", kb_account=" + kb_account + ", kb_num=" + kb_num + ", kb_year="
				+ kb_year + "]";
	}
	
	
	
}
