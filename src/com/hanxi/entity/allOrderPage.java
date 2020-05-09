package com.hanxi.entity;

import java.io.Serializable;

/**
 * 处理分页 Created by ASUS on 2018/5/7
 * 
 * @Authod Grey Wolf
 */

public class allOrderPage implements Serializable {

	private Integer page;
	private Integer limit;
	private String kb_no;
	private String va_no;
	private String status;
	private String order_placer;
	private String part_type;
	private String keyWord;
	private String keyType;
	private String bench_name;
	private String type;


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPart_type() {
		return part_type;
	}

	public void setPart_type(String part_type) {
		this.part_type = part_type;
	}

	public String getBench_name() {
		return bench_name;
	}

	public void setBench_name(String bench_name) {
		this.bench_name = bench_name;
	}

	public String getKeyType() {
		return keyType;
	}

	public void setKeyType(String keyType) {
		this.keyType = keyType;
	}

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

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public String getKb_no() {
		return kb_no;
	}

	public void setKb_no(String kb_no) {
		this.kb_no = kb_no;
	}

	public String getVa_no() {
		return va_no;
	}

	public void setVa_no(String va_no) {
		this.va_no = va_no;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOrder_placer() {
		return order_placer;
	}

	public void setOrder_placer(String order_placer) {
		this.order_placer = order_placer;
	}

}
