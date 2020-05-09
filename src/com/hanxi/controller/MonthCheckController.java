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
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.Month_checkService;
import com.hanxi.service.UserService;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class MonthCheckController {
	@Autowired
	private Month_checkService month_checkService;
	
	/**
	 * 跳转月点检列表
	 * @return
	 */
	@RequestMapping("/monthCheckList")
	public String peopleList(){
		return "monthCheckList";
	}
	
	@RequestMapping("/monthCheckDeails")
	public String monthCheckDeails(month_check month_check,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			month_check month_check2=month_checkService.monthly_checkDeails(month_check);
			 if(month_check2!=null) {
				 model.addAttribute("month_check", month_check2);
			 }
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "monthCheckDeails";
	}
	
	
	@RequestMapping("/updateMonthCheckDeails")
	public String updateMonthCheckDeails(month_check month_check,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			month_check month_check2=month_checkService.monthly_checkDeails(month_check);
			 if(month_check2!=null) {
				 model.addAttribute("month_check", month_check2);
			 }
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "updateMonthCheckDeails";
	}
	@RequestMapping(value ="/updateMonthly",method = RequestMethod.POST)
	@ResponseBody
	public String updateMonthly(month_check month_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
		/*	System.out.println(month_check.toString());
			String yearAndMonth[]=month_check.getCheck_time().split("-");
			month_check.setYear(yearAndMonth[0]);
			month_check.setMonth(yearAndMonth[1]);
			 month_check.setCreate_time(new Date());*/
			 //先查询
			 month_check month_check2=month_checkService.monthly_checkDeails(month_check);
			 if(month_check2!=null) {
			 //更新数据
				 month_check.setMonth_id(month_check2.getMonth_id());
				Integer count1=month_checkService.update_month_check(month_check);
				if(count1>0) {
					return "success";
				}
		
			 }
			 
			
		}else {
			return "other";
		}
	
		return "fail";
	}
	
	@RequestMapping("/monthlyCheck")
	public String dailyCheck(Model model,HttpServletRequest request, HttpServletResponse response){
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
	
		return "monthCheck";
	}
	
	@RequestMapping(value ="/monthly",method = RequestMethod.POST)
	@ResponseBody
	public String daily(month_check month_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			System.out.println(month_check.toString());
			String yearAndMonth[]=month_check.getCheck_time().split("-");
			month_check.setYear(yearAndMonth[0]);
			month_check.setMonth(yearAndMonth[1]);
			 month_check.setCreate_time(new Date());
			 //先查询
			 month_check month_check2=month_checkService.monthly_checkDeails(month_check);
			 if(month_check2!=null) {
				/* //更新数据
				 month_check.setMonth_id(month_check2.getMonth_id());
				Integer count1=month_checkService.update_month_check(month_check);
				if(count1>0) {
					return "success";
				}*/
				 return "error";
			 }else {
				 Integer count=month_checkService.insert_monthly_check(month_check);
					if(count>0) {
						return "success";
					}
			 }
			 
			
		}else {
			return "other";
		}
	
		return "fail";
	}

	
	
	@RequestMapping(value ="/monthlyList",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> daily_checkList(month_check month_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			System.out.println(month_check.getTime()+"daily_check.getTime()");
			if(month_check.getTime()!=null&&month_check.getTime()!="") {
				
				String time[]=month_check.getTime().split("~");
				String start=time[0];
				String end=time[1];
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				 Date start_Time=sdf.parse(start);
				 Date end_Time=sdf.parse(end);
				 month_check.setStartTime(start_Time);
				 month_check.setEndTime(end_Time);
			}
			List<month_check> list=month_checkService.monthly_checkList(month_check);
			for(int i=0;i<list.size();i++) {
				System.out.println(list.get(i).toString());
			}
			Integer count=month_checkService.findMonthCount(month_check);
			 if(!list.isEmpty()) {
				 map.put("success", 1);
				 map.put("count", count);
				 map.put("daily_checkList", list);
			 }else {
				 map.put("success", -1);
			 }
			
		}else {
			 map.put("success", -2);
		}
		return map;
	}
	
	/**
	 * 批量删除信息
	 */
	@RequestMapping(value = "deleteAllMonthCheckList")
	@ResponseBody
	public int deleteAllcheckList(String ids,HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ids===" + ids);
		String newsId[] = ids.split(",");
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			String role=user.getRole();
			if(role.equals("administrator")) {
		
		try {
			for (String id : newsId) {
				month_check month_check = new month_check();
				month_check.setMonth_id(Integer.parseInt(id));
				month_checkService.delete_monthly_check(Integer.parseInt(id));
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
			}else {
				return -2;//权限不足
			}
		}else {
			return -3;
		}
	}
	
}
