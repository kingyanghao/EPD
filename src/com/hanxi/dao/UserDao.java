package com.hanxi.dao;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.bench;
import com.hanxi.entity.sys_user;


public interface UserDao {
	
	/**
	 * 查询人员总人数
	 * @return
	 */
	public Integer findRecordCount(sys_user sys_user);
	
	/**
	 * 查询人员列表
	 * @param sys_user
	 * @return
	 */
	public List<sys_user> findList(sys_user sys_user);
	
	/**
	 * 查询技能矩阵列表
	 * @param sys_user
	 * @return
	 */
	public List<sys_user> operatorList();
	
	/**
	 * 登录
	 * @param account
	 * @param password
	 * @return
	 */
	public sys_user select_login(sys_user sys_user);
	
	/**
	 * 注册
	 * @param sys_user
	 * @return
	 */
	public Integer insert_register(sys_user sys_user);
	
	/**
	 * 修改
	 * @param sys_user
	 * @return
	 */
	public Integer update_notes(sys_user sys_user);
	
	/**
	 * 删除
	 * @param sys_user
	 * @return
	 */
	public Integer delete_notes(Integer user_id);
	
	
	/**
	 * 修改密码
	 * @param sys_user
	 * @return
	 */
	public Integer update_password(sys_user sys_user);
	
	/**
	 * 查询所有非操作员的信息
	 * @return
	 */
	public List<sys_user> noOperatorList();
	
	/**
	 * 查询所有推荐操作人员下的订单
	 */
	public List<sys_user> getoperator();	
	
	/**
	 * 查询当日操作人员下的订单
	 */
	public List<sys_user> dailyOrder(sys_user sys_user);
	/**
	 * 查询当日台架操作人员下的订单
	 */
	public List<bench> benchOrder(bench bench);
	/**
	 * 查询五日操作人员下的订单
	 */
	public List<sys_user> five_dailyOrder(String dayDate);
	
	/**
	 * 查询七日操作人员下加班的订单
	 */
	public List<sys_user> seven_dailyOrder(String dayDate);
	/**
	 * 查询操作人员下加班的统计
	 */
	
	public List<sys_user> month_dailyOrder(sys_user sys_user);
	/**
	 * 查询所有的人员
	 */
	public List<sys_user> AllList();
	
	/**
	 * 查询所有要发送邮件的管理元的邮箱
	 * @return
	 */
	public List<String> administratorList();
	/**
	 * 查询发送邮件的人员
	 * @return
	 */
	public List<String> emailList(String username);
	
	
	/**
	 * 查询操作所有人员下调休的统计
	 */
	
	public List<sys_user> month_PaidOrder(sys_user sys_user);
	
	
}
