package com.hanxi.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.hanxi.dao.KbRecordDao;
import com.hanxi.dao.Work_orderDao;
import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.allWorkSheet;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.work_order;




@Service
@Transactional(readOnly = true)
public class Work_orderService {
	@Autowired
	private Work_orderDao work_orderDao;
	
	@Autowired
	private KbRecordDao kbRecordDao;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	@Transactional(rollbackFor = { Exception.class })
	public Integer deleteOrder(work_order work_order) {
		//1.获取事务定义
				DefaultTransactionDefinition def = new DefaultTransactionDefinition();
				//2.设置事务隔离级别，开启新事务
				def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
				//3.获得事务状态
				TransactionStatus status = transactionManager.getTransaction(def);
				try {	// 事务提交
					kb_record kb_record=new kb_record();
					kb_record.setKb_no(work_order.getKb_no());
					kb_record.setKb_status("0");
					work_orderDao.deleteOrder(work_order);
					//kbRecordDao.update_kb_record(kb_record);
					transactionManager.commit(status);
					return 1;
				} catch (Exception e) {
					// 事务回滚
					System.out.println(e.getMessage());
					transactionManager.rollback(status);
					return -1;
				}
	}
	
	
	@Transactional(rollbackFor = { Exception.class })
	public Integer insert_work_order(work_order work_order) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
		kb_record kb_record=new kb_record();
		kb_record.setKb_status("1");
		kb_record.setKb_no(work_order.getKb_no());
		Integer aa=work_orderDao.insert_work_order(work_order);
		Integer bb=kbRecordDao.update_kb_record(kb_record);
		// 事务提交
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
	 * 查询该条订单是否存在
	 * @param work_order
	 * @return
	 */
	
	public work_order select_Order_Deails(work_order work_order) {
		return work_orderDao.select_Order_Deails(work_order);
	}
	/**
	 * 查询所有的未排单的列表
	 * @param work_order
	 * @return
	 */
	public List<work_order> select_work_order_list(work_order work_order){
		return work_orderDao.select_work_order_list(work_order);
	}
	
	/**
	 * 查询所有的未排单条数
	 * @param work_order
	 * @return
	 */
	public Integer findWork_orderCount(work_order work_order) {
		return work_orderDao.findWork_orderCount(work_order);
	}
	
	
	/**
	 * 更新数据
	 * @param work_order
	 * @return
	 */
	public Integer update_work_order(work_order work_order) {
		return work_orderDao.update_work_order(work_order);
	}
	
	
	/**
	 * 查询所有的执行中，已完成的列表
	 * @param work_order
	 * @return
	 */
	public List<work_order> select_performWork_order_list(work_order work_order){
		return work_orderDao.select_performWork_order_list(work_order);
	}
	
	/**
	 * 查询所有的执行中，已完成条数
	 * @param work_order
	 * @return
	 */
	public Integer findPerformWork_orderCount(work_order work_order) {
		return work_orderDao.findPerformWork_orderCount(work_order);
	}
	
	/**
	 * 查询全部的订单
	 */
	public List<work_order> findAllOrderList(allOrderPage allOrderPage){
		return work_orderDao.findAllOrderList(allOrderPage);
	}
	
	/**
	 * 查询数量
	 */
	public Integer findAllOrderListCount(allOrderPage allOrderPage) {
		return work_orderDao.findAllOrderListCount(allOrderPage);
	}
	
	/**
	 * 查询该va是否已经被下过单
	 * @param va_no
	 * @return
	 */
	public work_order selectVAOrderDeails(String va_no) {
		return work_orderDao.selectVAOrderDeails(va_no);
		
	}
	
	
	
	/**
	 * 查询所有子订单的信息
	 */
	public List<allWorkSheet> findallWorkSheetOrderList(allWorkSheet allWorkSheet){
		return work_orderDao.findallWorkSheetOrderList(allWorkSheet);
	}
	
	/**
	 * 查询子订单数量
	 */
	public Integer findallWorkSheetListCount(allWorkSheet allWorkSheet) {
		return work_orderDao.findallWorkSheetListCount(allWorkSheet);
	}
}
