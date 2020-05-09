package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class evaluation {

	private int evaluation_id;
	private String evaluation_kb;
	private String evaluation;
	private String evaluation_name;
	private Date evaluation_time;
	public int getEvaluation_id() {
		return evaluation_id;
	}
	public void setEvaluation_id(int evaluation_id) {
		this.evaluation_id = evaluation_id;
	}
	public String getEvaluation_kb() {
		return evaluation_kb;
	}
	public void setEvaluation_kb(String evaluation_kb) {
		this.evaluation_kb = evaluation_kb;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	public String getEvaluation_name() {
		return evaluation_name;
	}
	public void setEvaluation_name(String evaluation_name) {
		this.evaluation_name = evaluation_name;
	}
	public Date getEvaluation_time() {
		return evaluation_time;
	}
	public void setEvaluation_time(Date evaluation_time) {
		this.evaluation_time = evaluation_time;
	}
	@Override
	public String toString() {
		return "evaluation [evaluation_id=" + evaluation_id + ", evaluation_kb=" + evaluation_kb + ", evaluation="
				+ evaluation + ", evaluation_name=" + evaluation_name + ", evaluation_time=" + evaluation_time + "]";
	}
	
	
	
}
