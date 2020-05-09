package com.hanxi.controller;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.paidLeavePage;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.paid_leave_statistics;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;
import com.hanxi.entity.work_order;
import com.hanxi.service.CalendarOptionsService;
import com.hanxi.service.PaidLeaveService;
import com.hanxi.service.PaidLeaveStatisticsService;
import com.hanxi.service.UserService;
import com.hanxi.util.DateUtils;
import com.hanxi.util.MathMoney;

/**
 * 处理分页 Created by ASUS on 2018/5/7
 * 
 * @Authod Grey Wolf
 */
@Controller
@RequestMapping("/main")
public class PaidLeaveController {
	
	//时间的中间节点
	private static final String HOUR="12:30";
	//一小时的毫秒数
	private static final long  MILLISECORD=3600000;
	private static final long  HALFHOUR=1800000;
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PaidLeaveService paidLeaveService;
	
	@Autowired
	private CalendarOptionsService calendarOptionsService;
	
	@Autowired
	private PaidLeaveStatisticsService paidLeaveStatisticsService;

	
	/**
	 * 查询调休更新
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/addupdatePiadLeave")
	public String addupdatePiadLeave(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			String psid= request.getParameter("psid");
			paid_leave_statistics paid_leave_statistics=new paid_leave_statistics();
			paid_leave_statistics.setPsid(Integer.valueOf(psid));
			 paid_leave_statistics=paidLeaveStatisticsService.paidOrderDeails(paid_leave_statistics);
			 System.out.println(paid_leave_statistics.toString());
			 model.addAttribute("paid_leave_statistics", paid_leave_statistics);
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		return "addupdatePiadLeave";
	}
	
	
	
	/**
	 * 查询调休详情
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/addPiadLeaveDeails")
	public String addPiadLeaveDeails(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			String psid= request.getParameter("psid");
			paid_leave_statistics paid_leave_statistics=new paid_leave_statistics();
			paid_leave_statistics.setPsid(Integer.valueOf(psid));
			 paid_leave_statistics=paidLeaveStatisticsService.paidOrderDeails(paid_leave_statistics);
			 System.out.println(paid_leave_statistics.toString());
			 model.addAttribute("paid_leave_statistics", paid_leave_statistics);
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		return "addPiadLeaveDeails";
	}
	
	
	
	@RequestMapping("/addPaid_leave")
	public String addPaid_leave(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			//操作者，工程师只可以创建自己的调休的订单
			if(user.getRole().equals("operator")||user.getRole().equals("engineer")){
				//身份权限不足
				model.addAttribute("role", "operator");
				model.addAttribute("name", user.getUsername());
				
			}else {
				model.addAttribute("name", user.getUser_id());
				model.addAttribute("role", "administrator");
			}
			//查询所有的工程师，以及管理员
			List<sys_user> noOperatorList=userService.AllList();
			model.addAttribute("noOperatorList", noOperatorList);
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		return "addPiadLeave";
	}
	
	
	
	
	
	 /**
	   * 获取两个日期之间的日期
	   * 
	   * @param start 开始日期
	   * @param end 结束日期
	   * @return 日期集合
	   
	 * @throws ParseException */
	public static List<String> getBetweenDates(String startDate1, String endDate1) throws ParseException {
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 Date startDate = sdf.parse(startDate1);
		 Date endDate = sdf.parse(endDate1);
		
		List<Date> result = new ArrayList<Date>();
		 Calendar tempStart = Calendar.getInstance();
		 tempStart.setTime(startDate);
		 
		// System.out.println(tempStart+"tempSta111111111rt");
		 //tempStart.add(Calendar.DAY_OF_YEAR, 1);
		 //System.out.println(tempStart+"tempStart");
		 Calendar tempEnd = Calendar.getInstance();
		 //result.add(startDate);
		 tempEnd.setTime(endDate);
		 while (tempStart.before(tempEnd)) {
		 result.add(tempStart.getTime());
		tempStart.add(Calendar.DAY_OF_YEAR, 1);
		 }
		result.add(endDate);
		List<String> result1 = new ArrayList<String>();
		for(int i=0;i<result.size();i++) {
			result1.add(sdf.format(result.get(i)));
		}
	return result1;
	}

	 /**
	   * 判断是否是周末
	   * 
	   * @return
	   
	 * @throws ParseException */
	public static boolean isWeekend(String date1) throws ParseException {
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 Date date = sdf.parse(date1);
	 Calendar cal = Calendar.getInstance();
	 cal.setTime(date);
	 int week = cal.get(Calendar.DAY_OF_WEEK) - 1;
	 if (week == 6 || week == 0) {// 0代表周日，6代表周六
		 return true;
	 }
       return false;
	}
	
	/**
	 * 判断相差几小时
	 * @param endDate
	 * @param nowDate
	 * @return
	 */
	public static long getDatePoor(Date endDate, Date nowDate) {
		long nd = 1000 * 24 * 60 * 60;//每天毫秒数
		long nh = 1000 * 60 * 60;//每小时毫秒数
		long nm = 1000 * 60;//每分钟毫秒数
		long diff = endDate.getTime() - nowDate.getTime(); // 获得两个时间的毫秒时间差异
		long hour = diff % nd / nh; // 计算差多少小时
		return hour;

	}
	
	
	/**
	 * 进行调休添加当日的逻辑的处理
	 * @param workList
	 * @param overList
	 * @param betweenDates
	 * @param hour
	 * @param start
	 * @param end
	 * @return
	 * @throws ParseException
	 */
	private  String addPaidDay(List<String> workList,List<String> overList,List<String> betweenDates,Date hour,String start,String end,String p_remark,String name,String psid) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm");
		 Date startDate = sdf.parse(start);
		 Date endDate = sdf.parse(end);
		 System.out.println(startDate+"======endDate====="+endDate); 
		 Date startHour = sdf1.parse(start.split(" ")[1]);
		 Date endHour = sdf1.parse(end.split(" ")[1]);
		 System.out.println(startHour+"======startHour====="+endHour); 
		//先计算两个时间的相差，几小时，最低相差1小时
		//long hour= getDatePoor(endDate,startDate);
		System.out.println(hour+"=========hour");
			//查询该天是否为星期六日
			boolean isWeekend=isWeekend(betweenDates.get(0));
			double time=0.0;
			boolean isSave=false;
			boolean isPaid=false;
			if(isWeekend) {//为星期六，日，查看是否补班
				boolean isBeing=workList.contains(betweenDates.get(0));
				if(isBeing) {//是为补班进行保存逻辑的处理
					System.out.println("是，补班，需要进行调休");
					isPaid=true;
				}else {
					System.out.println("不是，补班，则不需要进行调休");
					return "NoTime";//不需要调休
				}
			}else {//查看是否为星期
				//不为星期，查询该日期是否为休息日
				boolean isBeing=overList.contains(betweenDates.get(0));
				if(isBeing) {//是为补班进行保存逻辑的处理
					System.out.println("是休息日，不需要进行调休");
					return "NoTime";//不需要调休
				}else {
					System.out.println("不是休息日，则需要进行调休");
					isPaid=true;
					}
					
				if(isPaid) {
					
					//进行数据的处理
					Long ms=endDate.getTime()-startDate.getTime();
					System.out.println(ms+"=========ms===");
					System.out.println(endHour.before(hour));
					System.out.println(startHour.after(hour));
					System.out.println(startHour.getTime()==hour.getTime());
					System.out.println(endHour.getTime()==hour.getTime());
					
					
					if(startHour.after(hour)||endHour.before(hour)||startHour.getTime()==hour.getTime()||endHour.getTime()==hour.getTime()) {//在吃饭之后，则进行直接相减//结束时间在吃饭之前，则进行直接相减
						 time = (double)ms/MILLISECORD;//获取小时数
						System.out.println(time+"====time=====");
						//取余，为0则代表最小的调休小时数为整数	
						long min=ms%MILLISECORD;
						System.out.println(min+"======min");
						if(time<1) {
							System.out.println("====最小调休时间不为1小时==1111===");
							return "MinimumPaidLeave";//最小调休数
						}else {
							System.out.println("====保存数据===");
							isSave=true;
						}
					}else {//包含吃饭时间在其中，要减去半小时的吃饭时间
						 time = (double)(ms-HALFHOUR)/MILLISECORD;//获取小时数扣除吃饭的半小时
						System.out.println(time+"====time==1111===");
						//取余，为0则代表最小的调休小时数为整数	
						long min=(ms-HALFHOUR)%MILLISECORD;
						if(time<1) {
							System.out.println("====最小调休时间不为1小时==11112222===");
							return "MinimumPaidLeave";//最小调休数
						}else {
							System.out.println("====保存数据==2222=");
							isSave=true;
						}
				}
				
				
					if(isSave) {
						//进行保存的数据处理
						paid_leave_statistics paid_leave_statistics=new paid_leave_statistics();
						paid_leave paid_leave=new paid_leave();
						if(psid!=null) {
							paid_leave_statistics.setPsid(Integer.valueOf(psid));
						}
						
						paid_leave_statistics.setCreate_date(new Date());
						paid_leave_statistics.setStart_time(startDate);
						paid_leave_statistics.setEnd_time(endDate);
						paid_leave_statistics.setP_remark(p_remark);
						paid_leave_statistics.setPsid_leave_name(name);
						paid_leave_statistics.setTime_hour(time+"");
						paid_leave.setPaid_leave_create(new Date());
						paid_leave.setPaid_leave_day(start.split(" ")[0]);
						paid_leave.setPaid_leave_month(DateUtils.getMonth(start)+"");
						paid_leave.setPaid_leave_year(DateUtils.getYear(start)+"");
						paid_leave.setPaid_leave_week(DateUtils.getWeekByDay(start)+"");
						paid_leave.setPaid_leave_name(name);
						paid_leave.setPaid_leave_time(time+"");
						paid_leave.setPaid_leave_start(start);
						paid_leave.setPaid_leave_end(end);
						int aa= paidLeaveStatisticsService.insertpaid_leave_statistics(paid_leave_statistics, paid_leave);
						if(aa>0) {
							return "Succ";
						}else {
							return "Error";
						}
					}else {
						return "Error";
					}
					
				}
			}
		
		
		
		
		return "-1";
		
	}
	
	
	@RequestMapping("/addPaid_leaveRecord")
	@ResponseBody
	public Map<String,Object> addPaid_leaveRecord(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<>();
		//进行数据的处理
		String start=request.getParameter("start");
		String end=request.getParameter("end");
		System.out.println(start+"==========ddd======"+end);
		String nameId=request.getParameter("nameId");
		System.out.println(start+"==="+end+"====="+nameId);
		String p_remark=request.getParameter("remark");
		System.out.println(start+"==="+end+"====="+p_remark);
		String psid=request.getParameter("psid");
		//获取当前时间的是否是公休日，工作日
		List<String> workList=calendarOptionsService.selectcalList(start, end, "2");//2为工作日
		List<String> overList=calendarOptionsService.selectcalList(start, end, "1");//1为休息日
		List<String> betweenDates = getBetweenDates(start, end);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm");
		Date hour=sdf1.parse(HOUR);
		String status="Error";
		if(betweenDates.size()>0&&betweenDates.size()==1) {//为不夸天的数据处理
			 status=addPaidDay(workList,overList, betweenDates, hour, start, end, p_remark, nameId,psid);
			System.out.println(status+"======进行返回值的修改======1111===");	
		}else {//跨天的处理
			 status=addMorePaidDay(workList,overList, betweenDates, hour, start, end, p_remark, nameId,psid);
			System.out.println(status+"======进行返回值的修改======12222111===");	
		}
		map.put("status",status);
		return map;
	}	
	
	
	/**
	 * 进行调休添加多日的逻辑的处理
	 * @param workList
	 * @param overList
	 * @param betweenDates
	 * @param hour
	 * @param start
	 * @param end
	 * @return
	 * @throws ParseException
	 */
	private  String addMorePaidDay(List<String> workList,List<String> overList,List<String> betweenDates,Date hour,String start,String end,String p_remark,String name,String psid) throws ParseException {
		String TimeStart=" 09:00";
		String TimeEnd=" 17:30";
		List<paid_leave> paid_leaveList=new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm");
		for(int i=0;i<betweenDates.size();i++) {
		
			 Date startDate;//开始的时间
			 Date endDate;//结束的时间
			 Date startHour;//开始的时
			 Date endHour;//结束的时
			 String oneDayStart;//开始时间的换算
			 String oneDayEnd;//结束时间的换算
			 String betweenDateDeails;//日期详情
			//进行第一天的数据处理
			if(i==0) {
				 oneDayStart=start;//第一天开始的时间
				 oneDayEnd=betweenDates.get(i)+TimeEnd;//第一天结束的时间
			}else if(i==(betweenDates.size()-1)) {
				//进行最后一天数据的处理
				oneDayStart=betweenDates.get(i)+TimeStart;//最后一天开始的时间
				oneDayEnd=end;//最后一天结束的时间
				System.out.println(i+"进入进入"+end+"========="+betweenDates.size());
			}else {
				//为整天
				oneDayStart=betweenDates.get(i)+TimeStart;//整天开始的时间
				oneDayEnd=betweenDates.get(i)+TimeEnd;//整天结束的时间
			}
			  startDate = sdf.parse(oneDayStart);
			  endDate = sdf.parse(oneDayEnd);
			  System.out.println(startDate+"======endDate====="+endDate); 
			  startHour = sdf1.parse(oneDayStart.split(" ")[1]);
			  endHour = sdf1.parse(oneDayEnd.split(" ")[1]);
			  System.out.println(startHour+"======startHour====="+endHour); 
			  betweenDateDeails=betweenDates.get(i);
			  paid_leave paid_leave=addDay(workList,overList,hour,betweenDateDeails, startDate, endDate, startHour, endHour,oneDayStart ,oneDayEnd );
			  if(paid_leave.getPaid_leave_day()!=null) {
				  paid_leaveList.add(paid_leave);
			  }
			  System.out.println(i+"================222222222"+(i==(betweenDates.size()-1)));
		}
		//进行保存的数据的处理
		//进行保存的数据处理
		if(paid_leaveList.size()>0) {
			paid_leave_statistics paid_leave_statistics=new paid_leave_statistics();
			paid_leave paid_leave=new paid_leave();
			paid_leave_statistics.setCreate_date(new Date());
			paid_leave_statistics.setStart_time(sdf.parse(start));
			paid_leave_statistics.setEnd_time(sdf.parse(end));
			paid_leave_statistics.setP_remark(p_remark);
			paid_leave_statistics.setPsid_leave_name(name);
			if(psid!=null) {
				paid_leave_statistics.setPsid(Integer.valueOf(psid));
			}
			String time="0";
			System.out.println("====111111111==========="+betweenDates.size());
			for(int i=0;i<paid_leaveList.size();i++) {
				time=MathMoney.add(time,paid_leaveList.get(i).getPaid_leave_time());
				paid_leaveList.get(i).setPaid_leave_name(name);
			}
			paid_leave_statistics.setTime_hour(time+"");
			int aa=paidLeaveStatisticsService.insertpaid_leave(paid_leave_statistics, paid_leaveList);
			if(aa>0) {
				return "Succ";
			}else {
				return "Error";
			}
		}else {
			//不需要调休
			return "NoTime";
		}
	}
	
	/**
	 * 跨天计算每天调休时间的逻辑
	 * @param workList
	 * @param overList
	 * @param hour
	 * @param betweenDateDeails
	 * @param startDate
	 * @param endDate
	 * @param startHour
	 * @param endHour
	 * @param start
	 * @param end
	 * @return
	 * @throws ParseException
	 */
	private paid_leave addDay(List<String> workList,List<String> overList,Date hour,String betweenDateDeails,Date startDate,Date endDate,Date startHour,Date endHour,String start,String end ) throws ParseException {
		paid_leave paid_leave=new paid_leave();
		//先计算两个时间的相差，几小时，最低相差1小时
		//long hour= getDatePoor(endDate,startDate);
		System.out.println(hour+"=========hour");
			//查询该天是否为星期六日
			boolean isWeekend=isWeekend(betweenDateDeails);
			double time=0.0;
			boolean isSave=false;
			boolean isPaid=false;
			if(isWeekend) {//为星期六，日，查看是否补班
				boolean isBeing=workList.contains(betweenDateDeails);
				if(isBeing) {//是为补班进行保存逻辑的处理
					System.out.println("是，补班，需要进行调休");
					isPaid=true;
				}
			}else {//查看是否为星期
				//不为星期，查询该日期是否为休息日
				boolean isBeing=overList.contains(betweenDateDeails);
				if(!isBeing) {
					System.out.println("不是休息日，则需要进行调休");
					isPaid=true;
					}
					
				if(isPaid) {
					
					//进行数据的处理
					Long ms=endDate.getTime()-startDate.getTime();
					System.out.println(ms+"=========ms===");
					System.out.println(endHour.before(hour));
					System.out.println(startHour.after(hour));
					System.out.println(startHour.getTime()==hour.getTime());
					System.out.println(endHour.getTime()==hour.getTime());
					
					
					if(startHour.after(hour)||endHour.before(hour)||startHour.getTime()==hour.getTime()||endHour.getTime()==hour.getTime()) {//在吃饭之后，则进行直接相减//结束时间在吃饭之前，则进行直接相减
						 time = (double)ms/MILLISECORD;//获取小时数
						System.out.println(time+"====time=====");
						//取余，为0则代表最小的调休小时数为整数	
						long min=ms%MILLISECORD;
						System.out.println(min+"======min");
						if(min!=0) {
							System.out.println("====最小调休时间不为1小时==1111===");
							//return "MinimumPaidLeave";//最小调休数
						}else {
							System.out.println("====保存数据===");
							isSave=true;
						}
					}else {//包含吃饭时间在其中，要减去半小时的吃饭时间
						 time =(double)(ms-HALFHOUR)/MILLISECORD;//获取小时数扣除吃饭的半小时
						System.out.println(time+"====time==1111===");
						//取余，为0则代表最小的调休小时数为整数	
						long min=(ms-HALFHOUR)%MILLISECORD;
						if(min!=0) {
							System.out.println("====最小调休时间不为1小时==11112222===");
							//return "MinimumPaidLeave";//最小调休数
						}else {
							System.out.println("====保存数据==2222=");
							isSave=true;
						}
				}
				
					
						//进行保存的数据处理
						paid_leave.setPaid_leave_create(new Date());
						paid_leave.setPaid_leave_day(start.split(" ")[0]);
						paid_leave.setPaid_leave_month(DateUtils.getMonth(start)+"");
						paid_leave.setPaid_leave_year(DateUtils.getYear(start)+"");
						paid_leave.setPaid_leave_week(DateUtils.getWeekByDay(start)+"");
						paid_leave.setPaid_leave_time(time+"");
						paid_leave.setPaid_leave_start(start);
						paid_leave.setPaid_leave_end(end);
					}
					
				
			}
		
		
		
		
		return paid_leave;
	}
	
	
	
	
	//转换函数，可以封装成公用方法
	public static String longTimeToDay(Long ms){
	        Integer ss = 1000;  
	        Integer mi = ss * 60;  
	        Integer hh = mi * 60;  
	        Integer dd = hh * 24;  

	        Long day = ms / dd;  
	        Long hour = (ms - day * dd) / hh;  
	        Long minute = (ms - day * dd - hour * hh) / mi;  
	        Long second = (ms - day * dd - hour * hh - minute * mi) / ss;  
	        Long milliSecond = ms - day * dd - hour * hh - minute * mi - second * ss;  

	        StringBuffer sb = new StringBuffer();  
	        if(day > 0) {  
	            sb.append(day+"天");  
	        }  
	        if(hour > 0) {  
	            sb.append(hour+"小时");  
	        }  
	        if(minute > 0) {  
	            sb.append(minute+"分");  
	        }  
	        if(second > 0) {  
	            sb.append(second+"秒");  
	        }  
	        if(milliSecond > 0) {  
	            sb.append(milliSecond+"毫秒");  
	        }  
	        return sb.toString();  
	    }

	
	
	//全部数据列表的跳转
	
		@RequestMapping("/paid_leaveList")
		public String allOrderList(Model model,HttpServletRequest request, HttpServletResponse response){
			HttpSession session = request.getSession();
			sys_user user = (sys_user) session.getAttribute("userMsg");
			if(user!=null) {
				/*if(user.getRole().equals("operator")){
					//身份权限不足
					model.addAttribute("role", "notRole");
				}else {*/
					//查询所有的工程师，以及管理员
					List<sys_user> noOperatorList=userService.AllList();
					
					va_record va_record=new va_record();
					va_record.setVa_name(user.getUsername());	
					//查询当前数据库中的最大值
					model.addAttribute("noOperatorList", noOperatorList);
					model.addAttribute("name", user.getUsername());
					
				/*}*/
			}else {
				//登录失败
				model.addAttribute("error", "error");
			}
			
			return "paid_leaveList";
		}
		
		
		//全部数据列表
		
		
		@RequestMapping("/findAllPaid_leaveList")
		@ResponseBody
		public Map<String, Object> findAllPaid_leaveList(HttpServletRequest request,paidLeavePage paidLeavePage) throws ParseException{
			Map<String, Object> maps = new HashMap<String, Object>();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			if(paidLeavePage.getStart_time()!=null&&paidLeavePage.getStart_time()!="") {
				paidLeavePage.setStart_time1(sdf.parse(paidLeavePage.getStart_time()));
			}
			if(paidLeavePage.getEnd_time()!=null&&paidLeavePage.getEnd_time()!="") {
				paidLeavePage.setEnd_time1(sdf.parse(paidLeavePage.getEnd_time()));
			}
			
			List<paid_leave_statistics> paid_leaveList = paidLeaveStatisticsService.findAllPaid_leaveList(paidLeavePage);
			int count = paidLeaveStatisticsService.findAllPaid_leaveListCount(paidLeavePage);
			//进行订单状态的处理
			HttpSession session = request.getSession();
			sys_user user = (sys_user) session.getAttribute("userMsg");
			System.out.println("user.getRole()::"+user.getRole());
			if(!user.getRole().equals("operator")){
				if(paid_leaveList.size()>0){
					for(int i=0;i<paid_leaveList.size();i++) {
						paid_leaveList.get(i).setRole("0");//0可修改
					}
				}
			}else {
				if(paid_leaveList.size()>0){
					for(int i=0;i<paid_leaveList.size();i++) {
						paid_leaveList.get(i).setRole("1");//1不可修改
					}
				}
			}
			
			
			
			maps.put("msg","");
			maps.put("count",count);
			 maps.put("data",paid_leaveList);
		    maps.put("code", 0);
			  
			return maps;
		}
		@RequestMapping(value ="/deletePaid_leave",method = RequestMethod.POST)
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
					String psid=request.getParameter("psid");
							//进行订单的删除，以及kb号的回退
							Integer del=paidLeaveStatisticsService.delpaid_leave_statistics(Integer.valueOf(psid));
							if(del>0) {
								map.put("succ", 1);//删除成功	
							}else {
								map.put("succ", -1);//删除失败
							}
						}
					
					
				
				
				 }
			
			return map;
		}	
		
		
		
		
		@RequestMapping("/paidLeavetimeOrder")
		public String overtime(Model model,HttpServletRequest request, HttpServletResponse response){
			
			HttpSession session = request.getSession();
			sys_user user = (sys_user) session.getAttribute("userMsg");
			if(user!=null) {
				/*if(user.getRole().equals("operator")){
					//身份权限不足
					model.addAttribute("role", "notRole");
				}else {*/
					//查询所有的工程师，以及管理员
					List<sys_user> noOperatorList=userService.AllList();
					
					va_record va_record=new va_record();
					va_record.setVa_name(user.getUsername());	
					//查询当前数据库中的最大值
					model.addAttribute("noOperatorList", noOperatorList);
					model.addAttribute("name", user.getUsername());
					
				/*}*/
			}else {
				//登录失败
				model.addAttribute("error", "error");
			}
			
			return "paidLeavetimeOrder";
		}
		
		@RequestMapping(value ="/paidLeaveSelectopeter")
		@ResponseBody
		public Map<String,Object> overtimeSelectopeter(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
			HttpSession session = request.getSession();
			sys_user user = (sys_user) session.getAttribute("userMsg");
			String name=request.getParameter("name");
			Map<String,Object> map=new HashMap<>();
			if(user!=null) {
				System.out.println("进入开始getTaskPool");
				sys_user sys_user=new sys_user();
				String val=request.getParameter("val");
				System.out.println("val"+val);
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				Date date=sdf.parse(val);
				sys_user.setStartMonth(date);
				List<sys_user> list3=userService.month_PaidOrder(sys_user);
				if(!list3.isEmpty()) {
					for(int i=0;i<list3.size();i++) {
						String count="0";
						List<paid_leave> paid_leaveList=list3.get(i).getPaid_leaveList();
						for(int s=0;s<paid_leaveList.size();s++) {
							count=MathMoney.add(count, paid_leaveList.get(s).getHarmonious());
						}
						list3.get(i).setConut(count);
				}
					map.put("succ", 1);
					map.put("list3", list3);
				}
				String[] ymd=val.split("-");
				int num=DateUtils.getDays(Integer.valueOf(ymd[0]),Integer.valueOf(ymd[1]));
				System.out.println(num);
				map.put("num", num);
			}else {
				map.put("succ", -1);
			}
		
			return map;
		}
}
