package com.hanxi.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanxi.dao.Daily_checkDao;
import com.hanxi.dao.Month_checkDao;
import com.hanxi.dao.UserDao;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;


@Service
@Transactional(readOnly = true)
public class Month_checkService {
	@Autowired
	private Month_checkDao donth_checkDao;
	
	
public Integer findMonthCount(month_check monthly_check) {
	return donth_checkDao.findMonthCount(monthly_check);
}
	
	public Integer insert_monthly_check(month_check monthly_check){
		return donth_checkDao.insert_monthly_check(monthly_check);
	}
	/**
	 * 查询日点检详情
	 * @param daily_check
	 * @return
	 */
	
	public month_check monthly_checkDeails(month_check monthly_check){
		return donth_checkDao.monthly_checkDeails(monthly_check);
	}
	
	/**
	 * 查询日点检列表
	 * @param sys_user
	 * @return
	 */

	public List<month_check> monthly_checkList(month_check month_check){
		return donth_checkDao.monthly_checkList(month_check);
	}
	
	/**
	 * 删除点检
	 * @param account
	 * @param password
	 * @return
	 */
	
	public Integer delete_monthly_check(Integer month_id){
		return donth_checkDao.delete_monthly_check(month_id);
	}
	
	
	/**
	 * 更新日点检
	 * @param sys_user
	 * @return
	 */
	public Integer update_month_check(month_check month_check){
		return donth_checkDao.update_month_check(month_check);
	}
}
