package com.hanxi.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.filechooser.FileSystemView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.bench;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.calendarOptionsPage;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.evaluation;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.month_check;
import com.hanxi.entity.scheduling_record;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;
import com.hanxi.entity.work_order;
import com.hanxi.service.CalendarOptionsService;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.EvaluationService;
import com.hanxi.service.KbRecordService;
import com.hanxi.service.Scheduling_recordService;
import com.hanxi.service.UserService;
import com.hanxi.service.VaRecordService;
import com.hanxi.service.Work_orderService;
import com.hanxi.util.DateUtils;
import com.hanxi.util.MathMoney;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class CalendarOptionsController {
	@Autowired
	private Work_orderService work_orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private Scheduling_recordService scheduling_recordService;
	@Autowired
	private CalendarOptionsService calendarOptionsService;
	
	
	
	@RequestMapping(value ="/addcal",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addcal(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		System.out.println("进入开始111");
		Map<String,Object> map=new HashMap<>();
		if(user!=null) {
			String ymd=request.getParameter("ymd");
			String status=request.getParameter("status");
			//查询当前日期是否已经编辑，已经编辑则提示
			calendarOptions calendarOptions=calendarOptionsService.selectcal(ymd);
			if(calendarOptions!=null) {
				map.put("succ", -2);//该日期已存在
			}else {
				//进行数据的处理
				calendarOptions calendarOptions1=new calendarOptions();
				 int year=DateUtils.getYear(ymd);
				 int month=DateUtils.getMonth(ymd);
				 String day=ymd.split("-")[2];
				 String c_week=DateUtils.getWeek(ymd);
				
				 boolean isWeek=DateUtils.isWeekend(ymd);//判断选中的日期是否为周末
				 if(isWeek&&status.equals("1")) {
					 map.put("succ", -4);//是为周末，不需要设置
				 }else if(!isWeek&&status.equals("2")) {
					 map.put("succ", -5);//是为工作日，不需要设置
				 }else {
					 Date date=new Date();
					 calendarOptions1.setCalendar_time(ymd);
					 calendarOptions1.setYear(String.valueOf(year));
					 calendarOptions1.setMonth(String.valueOf(month));
					 calendarOptions1.setC_week(c_week);
					 calendarOptions1.setWeek(DateUtils.getWeekByDay(ymd)+"");
					 calendarOptions1.setDay(day);
					 calendarOptions1.setType(status);
					 calendarOptions1.setCreate_time(date);
					 int aa=calendarOptionsService.addcal(calendarOptions1);
					 if(aa>0) {
						 map.put("succ", 1);
					 }else {
						 map.put("succ", -3);//保存失败
					 }
					 
				}
				 
				 
				 
				 
				
				 
						 
			}
			//否则进行数据的保存
						
		}else {
			map.put("succ", -1);
		}					
				
			
			
			
		
		return map;
	}
	


	@RequestMapping(value ="/deleteCalendaOrder",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> deleteCalendaOrder(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		System.out.println("进入开始111");
		Map<String,Object> map=new HashMap<>();
		if(user!=null) {
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			
			if(user.getRole().equals("operator")) {
				map.put("role", "-1");//权限不足
			}else {
				String coid=request.getParameter("coid");
			
						//进行订单的删除，以及kb号的回退
						Integer del=calendarOptionsService.deleteCalendaOrder(Integer.valueOf(coid));
						if(del>0) {
							map.put("succ", 1);//删除成功	
						}else {
							map.put("succ", -1);//删除失败
						}
					}
				
				
			
			
			 }
		
		return map;
	}
	
	
	/**
	 * 设置日历
	 * @return
	 */
	@RequestMapping("/addCalendar")
	public String addCalendar(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
		return "calendarOptionsList";
	}

	@RequestMapping("/findAllCalendarList")
	@ResponseBody
	public Map<String, Object> findAllCalendarList(HttpServletRequest request,calendarOptionsPage calendarOptionsPage) throws ParseException{
		Map<String, Object> maps = new HashMap<String, Object>();
		List<calendarOptions> calendarOptionsList = calendarOptionsService.findAllCalendarList(calendarOptionsPage);
		int count = calendarOptionsService.findAllCalendarListCount();
		//进行订单状态的处理
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(calendarOptionsList.size()>0) {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			for(int i=0;i<calendarOptionsList.size();i++) {
					if(calendarOptionsList.get(i).getType().equals("2")) {
						//代表是当前登陆人员下的单,或者该人员是管理员
						calendarOptionsList.get(i).setC_type("工作日");
					}else {
						calendarOptionsList.get(i).setC_type("休息日");
					}
			}
		}
		
		  	maps.put("msg","");
		    maps.put("count",count);
		    maps.put("data",calendarOptionsList);
		    maps.put("code", 0);
		return maps;
	}	
	
}
