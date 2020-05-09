package com.hanxi.service;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanxi.dao.UserDao;
import com.hanxi.entity.bench;
import com.hanxi.entity.sys_user;


@Service
@Transactional(readOnly = true)
public class UserService {
	@Autowired
	private UserDao userDao;
	
	/**
	 * 登录
	 * @param account
	 * @param password
	 * @return
	 */
	public sys_user select_login(sys_user sys_user) {
		return userDao.select_login(sys_user);
	};
	
	/**
	 * 注册
	 * @param sys_user
	 * @return
	 */

	public Integer insert_register(sys_user sys_user) {
		return userDao.insert_register(sys_user);
	};
	
	/**
	 * 修改
	 * @param sys_user
	 * @return
	 */
	public Integer update_notes(sys_user sys_user) {
		return userDao.update_notes(sys_user);
	};
	
	/**
	 * 删除
	 * @param sys_user
	 * @return
	 */
	public Integer delete_notes(Integer user_id) {
		return userDao.delete_notes(user_id);
	};	
	
	
	/**
	 * 查询人员总人数
	 * @return
	 */
	public Integer findRecordCount(sys_user sys_user) {
		return userDao.findRecordCount(sys_user);
	}
	
	/**
	 * 查询人员列表
	 * @param sys_user
	 * @return
	 */
	public List<sys_user> findList(sys_user sys_user){
		return userDao.findList(sys_user);
	}
	
	
	/**
	 * 修改密码
	 * @param sys_user
	 * @return
	 */
	public Integer update_password(sys_user sys_user) {
		return userDao.update_password(sys_user);
	}
	
	/**
	 * 查询技能矩阵列表
	 * @param sys_user
	 * @return
	 */
	public List<sys_user> operatorList(){
		return userDao.operatorList();
	}
	
	/**
	 * 查询所有非操作员的信息
	 * @param sys_user
	 * @return
	 */
	public List<sys_user> noOperatorList(){
		return userDao.noOperatorList();
	}
	
	public List<sys_user> getoperator(){
		return userDao.getoperator();
	}
	/**
	 * 查询当日的所有的人的排单计划
	 * @param sys_user
	 * @return
	 */
	public List<sys_user> dailyOrder(sys_user sys_user){
		return userDao.dailyOrder(sys_user);
	}
	
	public List<bench> benchOrder(bench bench){
		return userDao.benchOrder(bench);
	}
	
	public List<sys_user> five_dailyOrder(String dayDate){
		return userDao.five_dailyOrder(dayDate);
	}
	
	public List<sys_user> seven_dailyOrder(String dayDate){
		return userDao.seven_dailyOrder(dayDate);
	}
	
	
	/**
	 * 查询操作人员下加班的统计
	 */
	public List<sys_user> month_dailyOrder(sys_user sys_user){
		return userDao.month_dailyOrder(sys_user);
	}
	/**
	 * 查询所有的人员列表
	 * @return
	 */
	public List<sys_user> AllList(){
		return userDao.AllList();
	}
	
	/**
	 * 查询所有要发送邮件的管理元的邮箱
	 * @return
	 */
	public List<String> administratorList(){
		return userDao.administratorList();
	}
	
	/**
	 * 查询发送邮件的人员
	 * @return
	 */
	public List<String> emailList(String username){
		return userDao.emailList(username);
	}
	
	
	/**
	 * 查询操作所有人员下调休的统计
	 */
	
	public List<sys_user> month_PaidOrder(sys_user sys_user){
		return userDao.month_PaidOrder(sys_user);
	}
}
