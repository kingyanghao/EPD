package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.benchModification;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.sys_user;


public interface Daily_checkDao {
	
	
	public Integer findCount(daily_check daily_check);
	
	public Integer insert_daily_check(daily_check daily_check);
	/**
	 * 查询日点检详情
	 * @param daily_check
	 * @return
	 */
	
	public daily_check daily_checkDeails(daily_check daily_check);
	
	/**
	 * 查询日点检列表
	 * @param sys_user
	 * @return
	 */

	public List<daily_check> daily_checkList(daily_check daily_check);
	
	/**
	 * 删除点检
	 * @param account
	 * @param password
	 * @return
	 */
	
	public Integer delete_daily_check(Integer daily_id);
	
	
	/**
	 * 更新日点检
	 * @param sys_user
	 * @return
	 */
	public Integer update_daily_check(daily_check daily_check);
	

	
	/**
	 * 查询操作月点检统计
	 */
	
	public List<benchModification> daily_checkOrder(benchModification benchModification);
	
}
