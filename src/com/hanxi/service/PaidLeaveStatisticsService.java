package com.hanxi.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.hanxi.dao.Daily_checkDao;
import com.hanxi.dao.Month_checkDao;
import com.hanxi.dao.PaidLeaveDao;
import com.hanxi.dao.PaidLeaveStatisticsDao;
import com.hanxi.dao.UserDao;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.evaluation;
import com.hanxi.entity.month_check;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.paid_leave_statistics;
import com.hanxi.entity.sys_user;


@Service
@Transactional(readOnly = true)
public class PaidLeaveStatisticsService {
	@Autowired
	private PaidLeaveDao paidLeaveDao;
	
	@Autowired
	private PaidLeaveStatisticsDao paidLeaveStatisticsDao;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	

	
	
	
	/**
	 * 查询所有的调休的列表
	 * @param work_order
	 * @return
	 */
	public List<paid_leave_statistics> findAllPaid_leaveList(paidLeavePage paidLeavePage){
		return paidLeaveStatisticsDao.findAllPaid_leaveList(paidLeavePage);
	}
	
	/**
	 * 查询所有的调休条数
	 * @param work_order
	 * @return
	 */
	public Integer findAllPaid_leaveListCount(paidLeavePage paidLeavePage) {
		return paidLeaveStatisticsDao.findAllPaid_leaveListCount(paidLeavePage);
	}
	
	
	@Transactional(readOnly = false)
	public Integer delpaid_leave_statistics(Integer id) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
				paidLeaveStatisticsDao.delpaid_leave_statistics(id);
				paidLeaveDao.delpaid_leave(id);
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
	
	
	
	
	
	
	
	
	
	
	@Transactional(readOnly = false)
	public Integer insertpaid_leave_statistics(paid_leave_statistics paid_leave_statistics,paid_leave paid_leave) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
		
			if(paid_leave_statistics.getPsid()!=null) {
				//更新数据
				//更新数据
				Integer aa=paidLeaveStatisticsDao.updatepaid_leave_statistics(paid_leave_statistics);
				paidLeaveDao.delpaid_leave(paid_leave_statistics.getPsid());
				if(aa>0) {
					paid_leave.setWid(paid_leave_statistics.getPsid());
					paidLeaveDao.insertpaid_leave(paid_leave);
					// 事务提交
					transactionManager.commit(status);
					return 1;
				}else {
					transactionManager.rollback(status);
					return -1;
				}
			
			}else {
				Integer aa=paidLeaveStatisticsDao.insertpaid_leave_statistics(paid_leave_statistics);
				if(aa>0) {
					paid_leave.setWid(paid_leave_statistics.getPsid());
					paidLeaveDao.insertpaid_leave(paid_leave);
					// 事务提交
					transactionManager.commit(status);
					return 1;
				}else {
					transactionManager.rollback(status);
					return -1;
				}
			}
			
			
	} catch (Exception e) {
		// 事务回滚
		System.out.println(e.getMessage());
		transactionManager.rollback(status);
		return -1;
	}
	}
	
	@Transactional(readOnly = false)
	public Integer insertpaid_leave(paid_leave_statistics paid_leave_statistics,List<paid_leave> paid_leave) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
		
			if(paid_leave_statistics.getPsid()!=null) {
				//更新数据
				Integer aa=paidLeaveStatisticsDao.updatepaid_leave_statistics(paid_leave_statistics);
				paidLeaveDao.delpaid_leave(paid_leave_statistics.getPsid());
				if(aa>0) {
					System.out.println("+++++++++++++++++++++++++"+paid_leave_statistics.getPsid());
					System.out.println("+++++++++++++++++++++++++"+aa);
					for(int a=0;a<paid_leave.size();a++) {
						paid_leave.get(a).setWid(paid_leave_statistics.getPsid());
					}
					paidLeaveDao.addEmpsBatch(paid_leave);
					// 事务提交
					transactionManager.commit(status);
					return 1;
				}else {
					transactionManager.rollback(status);
					return -1;
				}
			}else {
			
			Integer aa=paidLeaveStatisticsDao.insertpaid_leave_statistics(paid_leave_statistics);
			if(aa>0) {
				System.out.println("+++++++++++++++++++++++++"+paid_leave_statistics.getPsid());
				System.out.println("+++++++++++++++++++++++++"+aa);
				for(int a=0;a<paid_leave.size();a++) {
					paid_leave.get(a).setWid(paid_leave_statistics.getPsid());
				}
				paidLeaveDao.addEmpsBatch(paid_leave);
				// 事务提交
				transactionManager.commit(status);
				return 1;
			}else {
				transactionManager.rollback(status);
				return -1;
			}
			}	
	} catch (Exception e) {
		// 事务回滚
		System.out.println(e.getMessage());
		transactionManager.rollback(status);
		return -1;
	}
	}
	
	
	/**
	 * 查询详情
	 * @param paid_leave_statistics
	 * @return
	 */
	public paid_leave_statistics paidOrderDeails(paid_leave_statistics paid_leave_statistics) {
		return paidLeaveStatisticsDao.paidOrderDeails(paid_leave_statistics);
	}
}
