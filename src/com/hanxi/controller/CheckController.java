package com.hanxi.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.benchModification;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.scheduling_record;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;
import com.hanxi.service.CalendarOptionsService;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.UserService;
import com.hanxi.util.DateUtils;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class CheckController {
	@Autowired
	private Daily_checkService daily_checkService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CalendarOptionsService calendarOptionsService;
	
	/**
	 * 跳转日点检列表调休
	 * @return
	 */

	
	
	
	//跳转到点检异常列表
	@RequestMapping("/checkList")
	public String checkList(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
				//查询所有的工程师，以及管理员
				List<sys_user> noOperatorList=userService.AllList();
				//查询当前数据库中的最大值
				model.addAttribute("noOperatorList", noOperatorList);
				model.addAttribute("name", user.getUsername());
				
			/*}*/
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		return "checkList";
	}
	
	
	
	/**
	 * 获取月的点检数据
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException 
	 */

	@RequestMapping("/workCheckOrder")
	@ResponseBody
	public Map<String,Object> workCountOrder(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		Map<String,Object> map=new HashMap<>();
		if(user!=null) {
			Date date=new Date();
			String str=request.getParameter("str");
			System.out.println(str);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
			String startDate = sdf.format(date);
			benchModification benchModification=new benchModification();
			calendarOptions calendarOptions=new calendarOptions();//休息日的获取
			calendarOptions calendarOptions1=new calendarOptions();//工作日的获取
			
			String strs[];
			if(str!=null&&str!="") {
				strs=str.split("-");
				
				benchModification.setStartMonth(sdf.parse(str));
			}else {
				strs=startDate.split("-");
				benchModification.setStartMonth(date);
			}
			calendarOptions.setYear(strs[0]);
			calendarOptions.setMonth(strs[1]);
			calendarOptions.setType("1");
			calendarOptions1.setYear(strs[0]);
			calendarOptions1.setMonth(strs[1]);
			calendarOptions1.setType("2");
			//获取当前时间的是否是公休日，工作日
			List<String> workList=calendarOptionsService.selectcalSearchList(calendarOptions1);//2为工作日
			List<String> overList=calendarOptionsService.selectcalSearchList(calendarOptions);//1为休息日
			
			List<benchModification> benchModificationList=	daily_checkService.daily_checkOrder(benchModification);
			for(int i=0;i<benchModificationList.size();i++) {
				//进行判断，是否为点检，异常，漏检
				List<daily_check> dailyList=benchModificationList.get(i).getDailyList();
				for(int a=0;a<dailyList.size();a++) {
					daily_check daily_check=dailyList.get(a);
					daily_check.setStatus(dianjian1(daily_check));
				//判断每天是否为调休
					String day=daily_check.getDeates();//获取日期
					if(workList.contains(day)) {//工作日
						daily_check.setIspaid("2");
					}else if(overList.contains(day)) {
						daily_check.setIspaid("1");//休息日
					}else {
						daily_check.setIspaid("3");//正常日期
					}
				}
				
			}
			map.put("benchModificationList", benchModificationList);
			map.put("succ", 1);
			
			
		}else {
			map.put("succ", -2);
		}
		
		
		return map;
	}
	
	public String dianjian1(daily_check day) {

		if (day.getBench_name()==null) {
			return "0";
		} else {
			if (day.getPower_supply().equals("2") || day.getTest_oil_level().equals("2")
					|| day.getHydraulic_oil_level().equals("2") || day.getAir_source_pressure().equals("2")
					|| day.getWater_coolant().equals("2") || day.getIndustrial_pc().equals("2")
					|| day.getSecurity_door().equals("2") || day.getInterlock().equals("2")
					|| day.getPipeline().equals("2") || day.getLacquer_tray().equals("2")
					|| day.getCleanliness_of_bench().equals("2") || day.getOil_mist().equals("2")) {
				return "2";
			} else {
				return "1";
			}
		}
	}
	
	
	
	
	
	
	
	/**
	 * 跳转日点检列表
	 * @return
	 */
	@RequestMapping("/dailyCheckList")
	public String peopleList(){
		return "dailyCheckList";
	}
	/**
	 * 修改日点检
	 * @param daily_check
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/updateDailyCheckDeails")
	public String updateDailyCheckDeails(daily_check daily_check,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			 daily_check daily_check2=daily_checkService.daily_checkDeails(daily_check);
			 if(daily_check2!=null) {
				 model.addAttribute("daily_check", daily_check2);
			 }
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "updateDailyCheckDeails";
	}
	
	
	@RequestMapping("/dailyCheckDeails")
	public String dailyCheckDeails(daily_check daily_check,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			 daily_check daily_check2=daily_checkService.daily_checkDeails(daily_check);
			 if(daily_check2!=null) {
				 model.addAttribute("daily_check", daily_check2);
			 }
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "dailyCheckDeails";
	}
	
	
	@RequestMapping("/dailyCheck")
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
	
		return "dailyCheck";
	}
	
	@RequestMapping(value ="/daily",method = RequestMethod.POST)
	@ResponseBody
	public String daily(daily_check daily_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			 Date start_Time=sdf.parse(daily_check.getCheck_time());
			 daily_check.setCheck_time1(start_Time);
			 daily_check.setCreate_time(new Date());
			 //先查询
			 
			 daily_check daily_check2=daily_checkService.daily_checkDeails(daily_check);
			 if(daily_check2!=null) {
				 //更新数据
			/*	 daily_check.setDaily_id(daily_check2.getDaily_id());
				Integer count1=daily_checkService.update_daily_check(daily_check);
				if(count1>0) {
					return "success";
				}*/
				 return "error";
			 }else {
				 Integer count=daily_checkService.insert_daily_check(daily_check);
					if(count>0) {
						return "success";
					}
			 }
			 
			
		}else {
			return "other";
		}
	
		return "fail";
	}

	@RequestMapping(value ="/updatedaily",method = RequestMethod.POST)
	@ResponseBody
	public String updatedaily(daily_check daily_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			/* SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			 Date start_Time=sdf.parse(daily_check.getCheck_time());
			 daily_check.setCheck_time1(start_Time);
			 daily_check.setCreate_time(new Date());*/
			 //先查询
			 
			 daily_check daily_check2=daily_checkService.daily_checkDeails(daily_check);
			 if(daily_check2!=null) {
				 //更新数据
				daily_check.setDaily_id(daily_check2.getDaily_id());
				Integer count1=daily_checkService.update_daily_check(daily_check);
				if(count1>0) {
					return "success";
				}else {
					return "error";
				}
			 }
			
		}else {
			return "other";
		}
	
		return "fail";
	}
	
	@RequestMapping(value ="/dailyList",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> daily_checkList(daily_check daily_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			System.out.println(daily_check.getTime()+"daily_check.getTime()");
			if(daily_check.getTime()!=null&&daily_check.getTime()!="") {
				
				String time[]=daily_check.getTime().split("~");
				String start=time[0];
				String end=time[1];
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				 Date start_Time=sdf.parse(start);
				 Date end_Time=sdf.parse(end);
				 daily_check.setStartTime(start_Time);
				 daily_check.setEndTime(end_Time);
			}
			List<daily_check> list=daily_checkService.daily_checkList(daily_check);
			Integer count=daily_checkService.findCount(daily_check);
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
	@RequestMapping(value = "deleteAllcheckList")
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
						daily_check daily_check = new daily_check();
						daily_check.setDaily_id(Integer.parseInt(id));
						daily_checkService.delete_daily_check(Integer.parseInt(id));
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
