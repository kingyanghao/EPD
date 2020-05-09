package com.hanxi.dao;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.evaluation;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;


public interface EvaluationDao {
	
	
	
	/**
	 * 插入评价
	 * @param name
	 * @param num
	 * @return
	 */
	
	public Integer insert_evaluation(evaluation evaluation);
	
	/**
	 * 查询评价
	 * @param name
	 * @param num
	 * @return
	 */
	public List<evaluation> select_evaluation_list(evaluation evaluation);
}
