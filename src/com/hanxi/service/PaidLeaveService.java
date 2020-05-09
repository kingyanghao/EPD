package com.hanxi.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanxi.dao.Daily_checkDao;
import com.hanxi.dao.Month_checkDao;
import com.hanxi.dao.PaidLeaveDao;
import com.hanxi.dao.UserDao;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.sys_user;


@Service
@Transactional(readOnly = true)
public class PaidLeaveService {
	@Autowired
	private PaidLeaveDao paidLeaveDao;
	
	
	

}
