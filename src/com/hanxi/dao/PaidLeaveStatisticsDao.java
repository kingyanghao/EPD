package com.hanxi.dao;

import java.util.Date;
import java.util.List;


import com.hanxi.entity.bench;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.paid_leave_statistics;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.work_order;


public interface PaidLeaveStatisticsDao {
	
	
	/**
	 * 查询所有的调休的列表
	 * @param work_order
	 * @return
	 */
	public List<paid_leave_statistics> findAllPaid_leaveList(paidLeavePage paidLeavePage);
	
	/**
	 * 查询所有的调休条数
	 * @param work_order
	 * @return
	 */
	public Integer findAllPaid_leaveListCount(paidLeavePage paidLeavePage);

	/**
	 * 保存当日的调休数据
	 * @param work_order
	 * @return
	 */
	public Integer insertpaid_leave_statistics(paid_leave_statistics paid_leave_statistics);
	
	
	/**
	 * 删除调休记录分单数据
	 * @param id
	 * @return
	 */
	public Integer delpaid_leave_statistics(Integer id);
	
	
	/**
	 * 查询详情
	 * @param paid_leave_statistics
	 * @return
	 */
	public paid_leave_statistics paidOrderDeails(paid_leave_statistics paid_leave_statistics);
	
	/**
	 * 跟新调休记录数据
	 * @param id
	 * @return
	 */
	public Integer updatepaid_leave_statistics(paid_leave_statistics paid_leave_statistics);
	
}
