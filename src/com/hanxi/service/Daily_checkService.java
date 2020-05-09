package com.hanxi.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanxi.dao.Daily_checkDao;
import com.hanxi.dao.UserDao;
import com.hanxi.entity.benchModification;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.sys_user;


@Service
@Transactional(readOnly = true)
public class Daily_checkService {
	@Autowired
	private Daily_checkDao daily_checkDao;
	
	
	public Integer findCount(daily_check daily_check) {
		return daily_checkDao.findCount(daily_check);
	}
	
	public Integer insert_daily_check(daily_check daily_check) {
		return daily_checkDao.insert_daily_check(daily_check);
	}
	/**
	 * 查询日点检详情
	 * @param daily_check
	 * @return
	 */
	
	public daily_check daily_checkDeails(daily_check daily_check) {
		return daily_checkDao.daily_checkDeails(daily_check);
	}
	
	/**
	 * 查询日点检列表
	 * @param sys_user
	 * @return
	 */

	public List<daily_check> daily_checkList(daily_check daily_check){
		return daily_checkDao.daily_checkList(daily_check);
	}
	
	/**
	 * 删除点检
	 * @param account
	 * @param password
	 * @return
	 */
	
	public Integer delete_daily_check(Integer daily_id){
		return daily_checkDao.delete_daily_check(daily_id);
	}
	
	
	/**
	 * 更新日点检
	 * @param sys_user
	 * @return
	 */
	public Integer update_daily_check(daily_check daily_check){
		return daily_checkDao.update_daily_check(daily_check);
	}
	
	

	/**
	 * 查询操作月点检统计
	 */
	
	public List<benchModification> daily_checkOrder(benchModification benchModification){
		return daily_checkDao.daily_checkOrder(benchModification);
	}
}
