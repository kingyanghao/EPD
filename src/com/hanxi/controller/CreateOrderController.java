package com.hanxi.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.daily_check;
import com.hanxi.entity.sys_user;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.UserService;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class CreateOrderController {
	@Autowired
	private Daily_checkService daily_checkService;
	
	
}
