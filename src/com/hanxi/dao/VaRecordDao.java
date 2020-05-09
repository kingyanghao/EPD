package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;


public interface VaRecordDao {
	
	/**
	 * 查询当前人员的所有的Va号
	 * @param name
	 * @param num
	 * @return
	 */
	
	public List<va_record> select_va_record_list(va_record va_record);
	
	/**
	 * 生成VO
	 * @param name
	 * @param num
	 * @return
	 */
	
	public Integer insert_va_record(va_record va_record);
	
	/**
	 * 查询count的数量
	 * @param name
	 * @param num
	 * @return
	 */
	public String select_va_record_count(va_record va_record);
	
}
