package com.hanxi.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.hanxi.dao.EvaluationDao;
import com.hanxi.dao.KbRecordDao;
import com.hanxi.dao.Work_orderDao;
import com.hanxi.entity.evaluation;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.work_order;




@Service
@Transactional(readOnly = true)
public class EvaluationService {
	@Autowired
	private Work_orderDao work_orderDao;
	@Autowired
	private EvaluationDao evaluationDao;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Transactional(readOnly = false)
	public Integer insert_evaluation(evaluation evaluation) {
		//1.获取事务定义
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		//2.设置事务隔离级别，开启新事务
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
		//3.获得事务状态
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			evaluationDao.insert_evaluation(evaluation);
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
	public List<evaluation> select_evaluation_list(evaluation evaluation){
	return evaluationDao.select_evaluation_list(evaluation);
	}
	
}
