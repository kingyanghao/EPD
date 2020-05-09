package com.hanxi.entity;

import java.io.Serializable;

/**
 * 处理分页 Created by ASUS on 2018/5/7
 * 
 * @Authod Grey Wolf
 */

public class Page implements Serializable {

	private Integer page;
	private Integer limit;
	private String keyWord;
	private String keyType;

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

}
