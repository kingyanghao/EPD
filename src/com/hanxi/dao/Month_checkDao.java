package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;


public interface Month_checkDao{
	
	
	public Integer findMonthCount(month_check monthly_check);
	
	public Integer insert_monthly_check(month_check monthly_check);
	/**
	 * 查询日点检详情
	 * @param daily_check
	 * @return
	 */
	
	public month_check monthly_checkDeails(month_check monthly_check);
	
	/**
	 * 查询日点检列表
	 * @param sys_user
	 * @return
	 */

	public List<month_check> monthly_checkList(month_check month_check);
	
	/**
	 * 删除点检
	 * @param account
	 * @param password
	 * @return
	 */
	
	public Integer delete_monthly_check(Integer month_id);
	
	
	/**
	 * 更新日点检
	 * @param sys_user
	 * @return
	 */
	public Integer update_month_check(month_check month_check);
	
}
