package com.hanxi.dao;

import java.util.Date;
import java.util.List;

import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.bench;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.calendarOptionsPage;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.work_order;


public interface CalendarOptionsDao {
	

	/**
	 * 查询全部的日历
	 */
	public List<calendarOptions> findAllCalendarList(calendarOptionsPage calendarOptionsPage);
	
	/**
	 * 查询数量
	 */
	public Integer findAllCalendarListCount();
	/**
	 * 删除日历
	 * @param coid
	 */
	public Integer deleteCalendaOrder(Integer coid);
	
	/**
	 * 进行数据的保存
	 * @param calendarOptions
	 * @return
	 */
	public Integer addcal(calendarOptions calendarOptions);
	
	/**
	 * 进行当前时间的选择
	 * @param cal
	 * @return
	 */
	public calendarOptions selectcal(String calendar_time);

	public List<String> selectcalList(String start,String end,String type);
	
	/**
	 * 进行日历的搜索
	 * @param calendarOptions
	 * @return
	 */
	public List<String> selectcalSearchList(calendarOptions calendarOptions);
	
}
