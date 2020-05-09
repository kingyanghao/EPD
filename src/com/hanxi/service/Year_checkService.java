package com.hanxi.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanxi.dao.Daily_checkDao;
import com.hanxi.dao.Month_checkDao;
import com.hanxi.dao.UserDao;
import com.hanxi.dao.Year_checkDao;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.year_check;


@Service
@Transactional(readOnly = true)
public class Year_checkService {
	@Autowired
	private Year_checkDao year_checkDao;
	
	
public Integer findYearCount(year_check year_check) {
	return year_checkDao.findYearCount(year_check);
}
	
	public Integer insert_yearly_check(year_check year_check){
		return year_checkDao.insert_yearly_check(year_check);
	}
	/**
	 * 查询日点检详情
	 * @param daily_check
	 * @return
	 */
	
	public year_check yearly_checkDeails(year_check year_check) {
		return year_checkDao.yearly_checkDeails(year_check);
	}
	
	/**
	 * 查询日点检列表
	 * @param sys_user
	 * @return
	 */

	public List<year_check> yearly_checkList(year_check year_check){
		return year_checkDao.yearly_checkList(year_check);
	}
	
	/**
	 * 删除点检
	 * @param account
	 * @param password
	 * @return
	 */
	
	public Integer delete_yearly_check(Integer year_id) {
		return year_checkDao.delete_yearly_check(year_id);
	}
	
	
	/**
	 * 更新日点检
	 * @param sys_user
	 * @return
	 */
	public Integer update_year_check(year_check year_check){
		return year_checkDao.update_year_check(year_check);
	}
}
