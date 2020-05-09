package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.year_check;


public interface Year_checkDao {
	
	
	public Integer findYearCount(year_check year_check);
	
	public Integer insert_yearly_check(year_check year_check);
	/**
	 * 查询日点检详情
	 * @param daily_check
	 * @return
	 */
	
	public year_check yearly_checkDeails(year_check year_check);
	
	/**
	 * 查询日点检列表
	 * @param sys_user
	 * @return
	 */

	public List<year_check> yearly_checkList(year_check year_check);
	
	/**
	 * 删除点检
	 * @param account
	 * @param password
	 * @return
	 */
	
	public Integer delete_yearly_check(Integer year_id);
	
	
	/**
	 * 更新日点检
	 * @param sys_user
	 * @return
	 */
	public Integer update_year_check(year_check year_check);
	
}
