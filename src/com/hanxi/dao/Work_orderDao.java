package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.allWorkSheet;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.work_order;


public interface Work_orderDao {
	
	
	public Integer findCount(daily_check daily_check);
	
	/**
	 * 新增订单
	 * @param work_order
	 * @return
	 */
	public Integer insert_work_order(work_order work_order);
	/**
	 * 查询该条订单是否存在
	 * @param work_order
	 * @return
	 */
	
	public work_order select_Order_Deails(work_order work_order);
	
	/**
	 * 查询所有的未排单的列表
	 * @param work_order
	 * @return
	 */
	public List<work_order> select_work_order_list(work_order work_order);
	
	/**
	 * 查询所有的未排单条数
	 * @param work_order
	 * @return
	 */
	public Integer findWork_orderCount(work_order work_order);
	
	/**
	 * 更新数据
	 * @param work_order
	 * @return
	 */
	public Integer update_work_order(work_order work_order);
	
	/**
	 * 更新排单的状态
	 * @param work_order
	 * @return
	 */
	public Integer update_work(work_order work_order);
	
	
	/**
	 * 查询所有的执行中，已完成的列表
	 * @param work_order
	 * @return
	 */
	public List<work_order> select_performWork_order_list(work_order work_order);
	
	/**
	 * 查询所有的执行中，已完成条数
	 * @param work_order
	 * @return
	 */
	public Integer findPerformWork_orderCount(work_order work_order);
	
	/**
	 * 删除gaidingdan
	 * @param work_order
	 * @return
	 */
	public Integer deleteOrder(work_order work_order);
	
	
	/**
	 * 查询全部的订单
	 */
	public List<work_order> findAllOrderList(allOrderPage allOrderPage);
	
	/**
	 * 查询数量
	 */
	public Integer findAllOrderListCount(allOrderPage allOrderPage);
	
	
	/**
	 * 查询该va是否已经被下过单
	 * @param va_no
	 * @return
	 */
	public work_order selectVAOrderDeails(String va_no);
	
	
	/**
	 * 查询所有子订单的信息
	 */
	public List<allWorkSheet> findallWorkSheetOrderList(allWorkSheet allWorkSheet);
	
	/**
	 * 查询子订单数量
	 */
	public Integer findallWorkSheetListCount(allWorkSheet allWorkSheet);
	
}
