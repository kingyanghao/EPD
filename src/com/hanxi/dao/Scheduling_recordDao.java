package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.scheduling_record;
import com.hanxi.entity.sys_user;


public interface Scheduling_recordDao {
	//查询该时间段是否有排单
	public List<scheduling_record> select_Scheduling_record(scheduling_record scheduling_record);
	
	//保存排单信息
	public Integer insert_scheduling_record(scheduling_record scheduling_record);
	
	//进行排单数据的处理
	public List<scheduling_record> getoperators(scheduling_record scheduling_record);
	
	//进行当前订单的查需
	public scheduling_record getscheduling_record(scheduling_record scheduling_record);
	
	//进行当前订单的删除
	public Integer delete_order(Integer id);

	public Integer close_order(scheduling_record scheduling_record);
	
	//进行加班统计，以及工作日统计
	public List<scheduling_record> getstatistical(scheduling_record scheduling_record);
	
}
