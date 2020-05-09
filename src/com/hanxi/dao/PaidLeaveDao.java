package com.hanxi.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hanxi.entity.bench;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.paid_leave_statistics;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.work_order;


public interface PaidLeaveDao {
	

	
	
	/**
	 * 保存当日的调休分单数据
	 * @param 
	 * @return
	 */
	public Integer insertpaid_leave(paid_leave paid_leave);
	
	
	/**
	 * 批量保存跨天的数据
	 * @param emps
	 * @return
	 */
	public int addEmpsBatch(@Param("emps") List<paid_leave> emps);
	
	
	/**
	 * 删除调休记录
	 * @param id
	 * @return
	 */
	public Integer delpaid_leave(Integer id);
	
	

	

}
