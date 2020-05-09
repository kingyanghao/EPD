package com.hanxi.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.hanxi.dao.CalendarOptionsDao;
import com.hanxi.dao.Daily_checkDao;
import com.hanxi.dao.Month_checkDao;
import com.hanxi.dao.PaidLeaveDao;
import com.hanxi.dao.UserDao;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.calendarOptionsPage;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.month_check;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.work_order;


@Service
@Transactional(readOnly = true)
public class CalendarOptionsService {
	
	@Autowired
	private CalendarOptionsDao calendarOptionsDao;

	
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	@Transactional(rollbackFor = { Exception.class })
	public Integer deleteCalendaOrder(Integer coid) {
		//1.获取事务定义
				DefaultTransactionDefinition def = new DefaultTransactionDefinition();
				//2.设置事务隔离级别，开启新事务
				def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
				//3.获得事务状态
				TransactionStatus status = transactionManager.getTransaction(def);
				try {	// 事务提交
				
					calendarOptionsDao.deleteCalendaOrder(coid);
					transactionManager.commit(status);
					return 1;
				} catch (Exception e) {
					// 事务回滚
					System.out.println(e.getMessage());
					transactionManager.rollback(status);
					return -1;
				}
	}
	
	
	
	
	/**
	 * 查询全部的日历
	 */
	public List<calendarOptions> findAllCalendarList(calendarOptionsPage calendarOptionsPage){
		return calendarOptionsDao.findAllCalendarList(calendarOptionsPage);
	}
	
	/**
	 * 查询数量
	 */
	public Integer findAllCalendarListCount() {
		return calendarOptionsDao.findAllCalendarListCount();
	}
	
	/**
	 * 进行数据的保存
	 * @param calendarOptions
	 * @return
	 */
	public Integer addcal(calendarOptions calendarOptions) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		try {	// 事务提交
		
			calendarOptionsDao.addcal(calendarOptions);
			transactionManager.commit(status);
			return 1;
		} catch (Exception e) {
			// 事务回滚
			System.out.println(e.getMessage());
			transactionManager.rollback(status);
			return -1;
		}
	}
	
	/**
	 * 进行当前时间的选择
	 * @param cal
	 * @return
	 */
	public calendarOptions selectcal(String calendar_time) {
		return calendarOptionsDao.selectcal(calendar_time);
	}
	
	public List<String> selectcalList(String start,String end,String type){
		return calendarOptionsDao.selectcalList(start,end,type);
	}
	
	/**
	 * 进行日历的搜索
	 * @param calendarOptions
	 * @return
	 */
	public List<String> selectcalSearchList(calendarOptions calendarOptions){
		return calendarOptionsDao.selectcalSearchList(calendarOptions);
		
	}
}
