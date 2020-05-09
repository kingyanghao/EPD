package com.hanxi.dao;



import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.sys_user;
import com.hanxi.entity.kb_record;


public interface KbRecordDao {
	
	/**
	 * 查询当前人员的所有的kb号
	 * @param name
	 * @param num
	 * @return
	 */
	
	public List<kb_record> select_kb_record_list();
	
	/**
	 * 生成VO
	 * @param name
	 * @param num
	 * @return
	 */
	
	public Integer insert_kb_record(kb_record kb_record);
	
	/**
	 * 查询count的数量
	 * @param name
	 * @param num
	 * @return
	 */
	public String select_kb_record_count(kb_record kb_record);
	
	/**
	 * 更新kb号
	 * @param kb_record
	 * @return
	 */
	public Integer update_kb_record(kb_record kb_record);
	
	
	/**
	 * 查询选中va_no下的kb
	 * 
	 * @param kb_va
	 * @return
	 */
	public List<kb_record> select_va_kb_record_list(String kb_va);
}
