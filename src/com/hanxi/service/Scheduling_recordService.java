package com.hanxi.service;






import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.hanxi.dao.KbRecordDao;
import com.hanxi.dao.Scheduling_recordDao;
import com.hanxi.dao.Work_orderDao;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.scheduling_record;
import com.hanxi.entity.work_order;
import com.hanxi.util.MathMoney;



@Service
public class Scheduling_recordService {
	

@Autowired
private DataSourceTransactionManager transactionManager;
	
	
	@Autowired
	Scheduling_recordDao scheduling_recordDao;
	
	@Autowired
	Work_orderDao work_orderDao;
	
	public List<scheduling_record> select_Scheduling_record(scheduling_record scheduling_record){
		return scheduling_recordDao.select_Scheduling_record(scheduling_record);
	}
	@Transactional(rollbackFor = { Exception.class })
	public Integer insert_scheduling_record(scheduling_record scheduling_record,work_order work_order) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
	


		try {
			scheduling_recordDao.insert_scheduling_record(scheduling_record);
			work_orderDao.update_work(work_order);
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
	
	public List<scheduling_record> getoperators(scheduling_record scheduling_record){
		return scheduling_recordDao.getoperators(scheduling_record);
	}	
	
	public scheduling_record getscheduling_record(scheduling_record scheduling_record) {
		return scheduling_recordDao.getscheduling_record(scheduling_record);
	}
	
	@Transactional(rollbackFor = { Exception.class })
	public synchronized Integer delete_order(scheduling_record scheduling_record) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		
		try {
			
			work_order work_order=new work_order();
			work_order.setKb_no(scheduling_record.getScheduling_kb());
			work_order work_order1=work_orderDao.select_Order_Deails(work_order);
			//获取当前排单的时间
			double scheduling_hours=Double.valueOf(scheduling_record.getScheduling_hours());
			//获取当前kb的剩余时间，总时间
			double remaining_hours=Double.valueOf(work_order1.getRemaining_hours());//剩余时间
			double single_hours=Double.valueOf(work_order1.getSingle_hours());//已经拍完的时间
			double addhours=MathMoney.add(remaining_hours,scheduling_hours);//剩余时间累加
			double subhours=MathMoney.sub(single_hours, scheduling_hours);//排单时间相见
			work_order work_order2=new work_order();
			if(subhours<=0) {
				subhours=0;
				work_order2.setStatus("0");
			}else {
				work_order2.setStatus("1");
			}
			work_order2.setKb_no(scheduling_record.getScheduling_kb());
			work_order2.setSingle_hours(String.valueOf(subhours));
			work_order2.setRemaining_hours(String.valueOf(addhours));
			Integer aa=scheduling_recordDao.delete_order(scheduling_record.getScheduling_id());
			work_orderDao.update_work(work_order2);
			// 事务提交
			transactionManager.commit(status);
			return 1;
		} catch (Exception e) {
			// 事务回滚
			transactionManager.rollback(status);
			return -1;
		}
		
	}
	
	@Transactional(rollbackFor = { Exception.class })
	public synchronized Integer close_order(scheduling_record scheduling_record) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		
		try {
			
			work_order work_order=new work_order();
			work_order.setKb_no(scheduling_record.getScheduling_kb());
			work_order work_order1=work_orderDao.select_Order_Deails(work_order);
			//获取当前排单的时间
			double scheduling_hours=Double.valueOf(scheduling_record.getScheduling_hours());
			double close_hours=Double.valueOf(work_order1.getClose_hours());//已完成时间
			//预计完成时间
			double work_hours=Double.valueOf(work_order1.getWork_hours());//预计完成时间
			double addhours=MathMoney.add(close_hours,scheduling_hours);//已完成时间累加
			work_order work_order2=new work_order();
			if(addhours==work_hours) {
				//该订单已完成
				work_order2.setStatus("3");
			}
			work_order2.setClose_hours(String.valueOf(addhours));
			work_order2.setKb_no(scheduling_record.getScheduling_kb());
			work_order2.setCreate_time(new Date());
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm");
			String date=sdf.format(new Date());
			scheduling_record.setClose_time(date);
			scheduling_record.setScheduling_status("2");			
			Integer aa=scheduling_recordDao.close_order(scheduling_record);
			work_orderDao.update_work(work_order2);
			// 事务提交
			transactionManager.commit(status);
			return 1;
		} catch (Exception e) {
			// 事务回滚
			transactionManager.rollback(status);
			return -1;
		}
		
	}
	
	
	//进行加班统计，以及工作日统计
		public List<scheduling_record> getstatistical(scheduling_record scheduling_record){
			return scheduling_recordDao.getstatistical(scheduling_record);
		}
}
